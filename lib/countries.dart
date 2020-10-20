/// Support for doing something awesome.
///
/// More dartdocs go here.
library countries;

import 'dart:collection';
import 'package:universal_io/io.dart';
import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'src/serializers.dart';
import 'src/subdivision_data.dart';
import 'src/country_data.dart';
import 'package:computer/computer.dart';
import 'package:stringmatcher/stringmatcher.dart';

bool _useComputer;

BuiltMap<String, CountryData> _buildCountries(dataString) {
  List<dynamic> data = json.decode(dataString);

  BuiltList countryData = deserializeListOf<CountryData>(data);
  return BuiltMap.from({
    for (var item in countryData)
      (item as CountryData).cca2: item as CountryData
  });
}

BuiltMap<String, SubDivision<String, BuiltList<CountrySubDivision>>>
    _buildSubDivisions(dataString) {
  List<dynamic> data = json.decode(dataString);

  return BuiltMap.from({
    for (var item in data)
      item['country']: SubDivision<String, BuiltList<CountrySubDivision>>(
          Map<String, BuiltList<CountrySubDivision>>.from({
            for (String subdivision in item.keys)
              if (subdivision != 'country')
                subdivision:
                    deserializeListOf<CountrySubDivision>(item[subdivision])
          }),
          item['country'])
  });
}

String _findCountry(List<dynamic> params) {
  var _countries = params[0] as BuiltMap<String, CountryData>;
  var name = params[1] as String;
  var fuzzyMatch = params[2] as bool ?? false;
  var ratio = params[3] as double ?? 0.5;
  var keys = _countries.keys.toList();

  name = name.toLowerCase();

  var found;
  StringMatcher sim;

  if (fuzzyMatch) {
    sim = StringMatcher(term: Term.char, algorithm: Levenshtein());
  }

  while (keys.isNotEmpty && found == null) {
    var key = keys.removeLast();
    var tmp = _countries[key];
    var common = tmp.name.common.toLowerCase();
    var official = tmp.name.official.toLowerCase();
    if (tmp.name.common.toLowerCase() == name ||
        tmp.name.official.toLowerCase() == name ||
        fuzzyMatch &&
            (sim.similar(common, name).ratio >= ratio ||
                sim.similar(official, name).ratio >= ratio)) {
      found = key;
    }
    if (found == null && tmp.name.native.keys.isNotEmpty) {
      var nativeNames = tmp.name.native;
      var nativeKeys = nativeNames.keys.toList();
      while (nativeKeys.isNotEmpty && found == null) {
        var nativeKey = nativeKeys.removeLast();
        var nativeTmp = nativeNames[nativeKey];
        var common = nativeTmp.common.toLowerCase();
        var official = nativeTmp.official.toLowerCase();
        if (nativeTmp != null &&
            (common == name ||
                official == name ||
                fuzzyMatch &&
                    (sim.similar(common, name).ratio >= ratio ||
                        sim.similar(official, name).ratio >= ratio))) {
          found = key;
        }
      }
      if (found == null) {
        var altSpellings = tmp.altSpellings.toList();
        while (altSpellings.isNotEmpty && found == null) {
          var item = altSpellings.removeLast().toLowerCase();
          if (item == name ||
              fuzzyMatch && sim.similar(name, item).ratio >= ratio) {
            found = key;
          }
        }
      }
    }
  }

  return found;
}

class SubDivision<K, V> extends MapView<K, V> {
  final String country;

  List<CountrySubDivision> get toList => [
        for (K key in keys)
          for (CountrySubDivision item in this[key]) item
      ];

  SubDivision(Map<K, V> divisions, String country)
      : country = country,
        super(divisions);
}

class Country {
  final CountryData _countryData;
  final SubDivision<String, BuiltList<CountrySubDivision>> _subDivisionData;

  Country(CountryData countryData,
      SubDivision<String, BuiltList<CountrySubDivision>> subDivisionData)
      : _countryData = countryData,
        _subDivisionData = subDivisionData;

  SubDivision<String, BuiltList<CountrySubDivision>> get subDivisions =>
      _subDivisionData;
  CountryData get details => _countryData;
  String get currency => _countryData.currencies.keys.first;
  Currency get currencyDetails =>
      _countryData.currencies[_countryData.currencies.keys.first];
  String get name => _countryData.name.common;
  String get language =>
      _countryData.languages[_countryData.languages.keys.first];
  String get languageIso639_3 => _countryData.languages.keys.first;
  BuiltMap<String, String> get allLanguages => _countryData.languages;
  String get id => _countryData.cca2;

  List<CountrySubDivision> searchSubdivisionByString(String needle) {
    needle = needle.toLowerCase();

    var found = <CountrySubDivision>[];

    _subDivisionData.forEach((key, subDivList) {
      subDivList.forEach((CountrySubDivision subdiv) {
        if (needle.length > 2 && subdiv.name.toLowerCase().contains(needle) ||
            subdiv.id.toLowerCase().contains(needle)) {
          found.add(subdiv);
        }
      });
    });

    return found;
  }

  List<CountrySubDivision> fuzzySearchSubdivisionByString(String needle,
      [double limit = 0.5]) {
    needle = needle.toLowerCase();

    var sim = StringMatcher(term: Term.char, algorithm: Levenshtein());
    var found = <CountrySubDivision>[];

    _subDivisionData.forEach((key, subDivList) {
      subDivList.forEach((CountrySubDivision subdiv) {
        var match = sim.similar(needle, subdiv.name).ratio;
        if (needle.length > 2 && match >= limit ||
            subdiv.id.toLowerCase().contains(needle)) {
          found.add(subdiv);
        }
      });
    });

    return found;
  }
}

class Countries {
  static final Countries _instance = Countries._internal();
  static String _countriesJson,
      _subdivisionsJson,
      _languagesJson,
      _countriesFile,
      _subdivisionsFile,
      _languagesFile;

  static dynamic _languagesJsonDecoded;

  factory Countries(
      {String countriesFile = 'lib/countries.json',
      String subdivisionsFile = 'lib/subdivisions.json',
      String languagesFile = 'lib/language-codes.json',
      String countriesJson,
      String subdivisionsJson,
      String languagesJson}) {
    _countriesJson = countriesJson;
    _subdivisionsJson = subdivisionsJson;
    _languagesJson = languagesJson;
    _countriesFile = countriesFile;
    _subdivisionsFile = subdivisionsFile;
    _languagesFile = languagesFile;

    return _instance;
  }

  BuiltMap<String, CountryData> _countries;
  BuiltMap<String, SubDivision<String, BuiltList<CountrySubDivision>>>
      _subdivisions;
  Map<String, Map<String, String>> _languages;
  Map<String, Country> _builtCountries;

  Country getCountry(String name) {
    if (_countries.containsKey(name)) {
      _builtCountries = _builtCountries ?? {};
      _builtCountries[name] = _builtCountries[name] ??
          Country(_countries[name], _subdivisions[name]);
      return _builtCountries[name];
    } else {
      throw (UnsupportedError(
          'Country $name does not exist or Countries has not yet loaded'));
    }
  }

  Future<Country> searchByName(String name,
      [bool fuzzyMatch = false, double ratio = 0.5]) async {
    String found;

    if (_useComputer) {
      found = await _computer
          .compute(_findCountry, param: [_countries, name, fuzzyMatch, ratio]);
    } else {
      found = _findCountry([_countries, name, fuzzyMatch, ratio]);
    }

    if (found != null) {
      return getCountry(found);
    }

    return null;
  }

  String getIso639_1(String iso639_3) => (_languages[iso639_3] ?? {})['alpha2'];

  Computer _computer;
  Completer _loader;

  Future get loader => _loader.future;

  Countries._internal() {
    _loader = Completer();
    Future initComputer;

    try {
      _useComputer = Platform.isAndroid || Platform.isIOS;
    } catch (e) {
      _useComputer = false;
    }

    if (_useComputer) {
      _computer = Computer();
      initComputer = _computer.turnOn();
    } else {
      var _tmp = Completer();
      initComputer = _tmp.future;
      _tmp.complete();
    }

    initComputer.whenComplete(() {
      //print('Computer loaded start exec');
      Future loadCountries = _getCountries();
      Future loadSubDivisions = _getSubDivisions();
      Future loadLanguages = _getLanguages();

      //print('execs started, wait...');

      return Future.wait([loadCountries, loadSubDivisions, loadLanguages]);
    }).then((val) {
      //print('Waiting done complete loader.');
      _loader.complete();
    });

    // loader = ;

    // if (_useComputer) {
    //   loader.whenComplete(() {
    //     //print('loader complete, turn of Computer');
    //     _computer.turnOff();
    //   });
    // }
  }

  Future<void> _getCountries() async {
    //print('Load ${_countriesFile ?? './countries.json'}');
    var dataString = _countriesJson ??
        await (File(_countriesFile ?? './countries.json').readAsString());
    //print('compute countries json');
    // _countries = _buildCountries(dataString);
    if (_useComputer) {
      _countries = await _computer.compute(_buildCountries, param: dataString);
    } else {
      _countries = _buildCountries(dataString);
    }
    // List<dynamic> data = await compute(json.decode, dataString);

    // BuiltList countryData = deserializeListOf<CountryData>(data);
    // _countries = BuiltMap.from({ for (var item in countryData) (item as CountryData).cca2 : item as CountryData });
  }

  Future<void> _getSubDivisions() async {
    //print('Load ${_subdivisionsFile ?? './subdivisions.json'}');
    var dataString = _subdivisionsJson ??
        await (File(_subdivisionsFile ?? './subdivisions.json').readAsString());
    //print('compute subdivisions json');
    // _subdivisions = _buildSubDivisions(dataString);
    if (_useComputer) {
      _subdivisions =
          await _computer.compute(_buildSubDivisions, param: dataString);
    } else {
      _subdivisions = _buildSubDivisions(dataString);
    }
  }

  Future<void> _getLanguages() async {
    //print('Load ${_subdivisionsFile ?? './subdivisions.json'}');
    var dataString = _languagesJson ??
        await (File(_languagesFile ?? './language-codes.json').readAsString());
    //print('compute languages json');
    // _languages = _buildlanguages(dataString);
    _languagesJsonDecoded = json.decode(dataString);

    _languages = {};

    List<dynamic>.from(_languagesJsonDecoded).forEach((dynamic item) {
      _languages[item['alpha3-b']] = Map<String, String>.from(item);
    });
  }
}
