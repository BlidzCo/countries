/// Support for doing something awesome.
///
/// More dartdocs go here.
library countries;

import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:computer/computer.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart' as sim;
import 'package:universal_io/io.dart';

import 'src/country_data.dart';
import 'src/serializers.dart';
import 'src/subdivision_data.dart';

const bool _useComputer = !identical(0, 0.0);

BuiltMap<String, CountryData> _buildCountries(dataString) {
  final List<dynamic> data = json.decode(dataString);

  final BuiltList countryData = deserializeListOf<CountryData>(data);
  return BuiltMap.from({for (var item in countryData) (item as CountryData).cca2: item});
}

BuiltMap<String, SubDivision<String, BuiltList<CountrySubDivision>>> _buildSubDivisions(dataString) {
  final List<dynamic> data = json.decode(dataString);

  return BuiltMap.from({
    for (var item in data)
      item['country']: SubDivision<String, BuiltList<CountrySubDivision>>(
          Map<String, BuiltList<CountrySubDivision>>.from({
            for (String subdivision in item.keys)
              if (subdivision != 'country') subdivision: deserializeListOf<CountrySubDivision>(item[subdivision])
          }),
          item['country'])
  });
}

String _findCountry(List<dynamic> params) {
  final _countries = params[0] as BuiltMap<String, CountryData?>;
  var name = params[1]!;
  final bool fuzzyMatch = params[2]!;
  final double ratio = params[3]! ?? 0.5;
  final keys = _countries.keys.toList();

  if (name.isEmpty) {
    throw UnsupportedError('Needle must not be empty');
  }

  name = name.toLowerCase();

  String found = '';

  while (keys.isNotEmpty && found.isEmpty) {
    final key = keys.removeLast();
    final CountryData? tmp = _countries[key];
    final common = tmp?.name.common.toLowerCase() ?? '';
    final official = tmp?.name.official.toLowerCase() ?? '';
    if (common == name ||
        official == name ||
        fuzzyMatch && ((sim.ratio(common, name) / 100) >= ratio || (sim.ratio(official, name) / 100) >= ratio)) {
      found = key;
    }
    if (found.isEmpty && (tmp?.name.native.keys.isNotEmpty ?? false)) {
      final nativeNames = tmp!.name.native;
      final nativeKeys = nativeNames.keys.toList();
      while (nativeKeys.isNotEmpty && found.isEmpty) {
        final nativeKey = nativeKeys.removeLast();
        final CountryNameTranslation? nativeTmp = nativeNames[nativeKey];
        final common = nativeTmp?.common.toLowerCase() ?? '';
        final official = nativeTmp?.official.toLowerCase() ?? '';
        if (nativeTmp != null &&
            (common == name ||
                official == name ||
                fuzzyMatch && (sim.ratio(common, name) / 100) >= ratio ||
                (sim.ratio(official, name) / 100) >= ratio)) {
          found = key;
        }
      }
      if (found.isEmpty) {
        final altSpellings = tmp.altSpellings.toList();
        while (altSpellings.isNotEmpty && found.isEmpty) {
          final item = altSpellings.removeLast().toLowerCase();
          if (item == name || fuzzyMatch && (sim.ratio(name, item) / 100) >= ratio) {
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
          if (this[key] is Map || this[key] is Iterable)
            for (final item in this[key] is Map
                // ignore: cast_nullable_to_non_nullable
                ? (this[key] as Map).values
                // ignore: cast_nullable_to_non_nullable
                : (this[key] as Iterable))
              item
      ];

  SubDivision(Map<K, V> divisions, this.country) : super(divisions);
}

class Country {
  final CountryData _countryData;
  final SubDivision<String, BuiltList<CountrySubDivision>> _subDivisionData;

  Country(CountryData countryData, SubDivision<String, BuiltList<CountrySubDivision>> subDivisionData)
      : _countryData = countryData,
        _subDivisionData = subDivisionData;

  SubDivision<String, BuiltList<CountrySubDivision>> get subDivisions => _subDivisionData;
  CountryData get details => _countryData;
  String get currency => _countryData.currencies.keys.first;
  Currency? get currencyDetails => _countryData.currencies[_countryData.currencies.keys.first];
  String get name => _countryData.name.common;
  String? get language => _countryData.languages[_countryData.languages.keys.first];
  String get languageIso639_3 => _countryData.languages.keys.first;
  BuiltMap<String, String> get allLanguages => _countryData.languages;
  String get id => _countryData.cca2;

  List<CountrySubDivision> searchSubdivisionByString(String needle) {
    if (needle.isEmpty) {
      throw UnsupportedError('Needle must not be empty');
    }

    needle = needle.toLowerCase();

    final found = <CountrySubDivision>[];

    _subDivisionData.forEach((key, subDivList) {
      for (final CountrySubDivision subdiv in subDivList) {
        if (needle.length > 2 && subdiv.name.toLowerCase().contains(needle) ||
            subdiv.id.toLowerCase().contains(needle)) {
          found.add(subdiv);
        }
      }
    });

    return found;
  }

  List<CountrySubDivision> fuzzySearchSubdivisionByString(String needle, [double limit = 0.5]) {
    if (needle.isEmpty) {
      throw UnsupportedError('Needle must not be empty');
    }

    needle = needle.toLowerCase();

    final found = <CountrySubDivision>[];

    _subDivisionData.forEach((key, subDivList) {
      for (final CountrySubDivision subdiv in subDivList) {
        final match = sim.ratio(needle, subdiv.name) / 100;
        if (needle.length > 2 && match >= limit || subdiv.id.toLowerCase().contains(needle)) {
          found.add(subdiv);
        }
      }
    });

    return found;
  }
}

class Countries {
  static final Countries _instance = Countries._internal();
  static String? _countriesJson, _subdivisionsJson, _languagesJson, _countriesFile, _subdivisionsFile, _languagesFile;

  static dynamic _languagesJsonDecoded;

  factory Countries(
      {String countriesFile = 'lib/countries.json',
      String subdivisionsFile = 'lib/subdivisions.json',
      String languagesFile = 'lib/language-codes.json',
      String? countriesJson,
      String? subdivisionsJson,
      String? languagesJson}) {
    _countriesJson = countriesJson;
    _subdivisionsJson = subdivisionsJson;
    _languagesJson = languagesJson;
    _countriesFile = countriesFile;
    _subdivisionsFile = subdivisionsFile;
    _languagesFile = languagesFile;

    return _instance;
  }

  BuiltMap<String, CountryData>? _countries;
  BuiltMap<String, SubDivision<String, BuiltList<CountrySubDivision>>>? _subdivisions;
  final Map<String, Map<String, String>> _languages = {};
  Map<String, Country> _builtCountries = {};

  Country? getCountry(String name) {
    if (_countries!.containsKey(name)) {
      _builtCountries = _builtCountries;
      _builtCountries[name] = _builtCountries[name] ?? Country(_countries![name]!, _subdivisions![name]!);
      return _builtCountries[name];
    } else {
      throw UnsupportedError('Country $name does not exist or Countries has not yet loaded');
    }
  }

  Future<Country?> searchByName(String name, [bool fuzzyMatch = false, double ratio = 0.5]) async {
    String found;

    if (name.isEmpty) {
      throw UnsupportedError('Name must not be empty');
    }

    if (_useComputer) {
      found = await _computer.compute(_findCountry, param: [_countries, name, fuzzyMatch, ratio]);
    } else {
      found = _findCountry([_countries, name, fuzzyMatch, ratio]);
    }

    if (found.isNotEmpty) {
      return getCountry(found);
    }

    return null;
  }

  String? getIso639_1(String iso639_3) => (_languages[iso639_3] ?? {})['alpha2'];

  late Computer _computer;
  late Completer _loader;

  Future get loader => _loader.future;

  Countries._internal() {
    _loader = Completer();
    Future initComputer;

    if (_useComputer) {
      _computer = Computer.shared();
      initComputer = _computer.turnOn();
    } else {
      final _tmp = Completer();
      initComputer = _tmp.future;
      _tmp.complete();
    }

    initComputer.whenComplete(() async {
      //print('Computer loaded start exec');
      final Future loadCountries = _getCountries();
      final Future loadSubDivisions = _getSubDivisions();
      final Future loadLanguages = _getLanguages();

      //print('execs started, wait...');

      await Future.wait([loadCountries, loadSubDivisions, loadLanguages]);
    }).then((_) {
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
    final dataString = _countriesJson ?? await File(_countriesFile ?? './countries.json').readAsString();
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
    final dataString = _subdivisionsJson ?? await File(_subdivisionsFile ?? './subdivisions.json').readAsString();
    //print('compute subdivisions json');
    // _subdivisions = _buildSubDivisions(dataString);
    if (_useComputer) {
      _subdivisions = await _computer.compute(_buildSubDivisions, param: dataString);
    } else {
      _subdivisions = _buildSubDivisions(dataString);
    }
  }

  Future<void> _getLanguages() async {
    //print('Load ${_subdivisionsFile ?? './subdivisions.json'}');
    final dataString = _languagesJson ?? await File(_languagesFile ?? './language-codes.json').readAsString();
    //print('compute languages json');
    // _languages = _buildlanguages(dataString);
    _languagesJsonDecoded = json.decode(dataString);

    for (final item in List<dynamic>.from(_languagesJsonDecoded)) {
      _languages[item['alpha3-b']] = Map<String, String>.from(item);
    }
  }
}
