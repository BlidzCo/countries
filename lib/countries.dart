/// Support for doing something awesome.
///
/// More dartdocs go here.
library countries;

import 'dart:collection';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:countries/src/serializers.dart';
import 'package:countries/src/subdivision_data.dart';
import 'package:countries/src/country_data.dart';
import 'package:computer/computer.dart';

export 'src/country_data.dart';

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

class SubDivision<K, V> extends MapView<K, V> {
  final String country;

  List<CountrySubDivision> get toList =>
      [for (K key in keys) for (CountrySubDivision item in this[key]) item];

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
  String get id => _countryData.cca2;
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

  String getIso639_1(String iso639_3) => (_languages[iso639_3] ?? {})['alpha2'];

  Computer _computer;
  Completer _loader;

  Future get loader => _loader.future;

  Countries._internal() {
    _loader = Completer();

    _computer = Computer();
    Future initComputer = _computer.turnOn();

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

    loader.whenComplete(() {
      //print('loader complete, turn of Computer');
      _computer.turnOff();
    });
  }

  Future<void> _getCountries() async {
    //print('Load ${_countriesFile ?? './countries.json'}');
    var dataString = _countriesJson ??
        await (File(_countriesFile ?? './countries.json').readAsString());
    //print('compute countries json');
    // _countries = _buildCountries(dataString);
    _countries = await _computer.compute(_buildCountries, param: dataString);
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
    _subdivisions =
        await _computer.compute(_buildSubDivisions, param: dataString);
  }

  Future<void> _getLanguages() async {
    //print('Load ${_subdivisionsFile ?? './subdivisions.json'}');
    var dataString = _languagesJson ??
        await (File(_languagesFile ?? './language-codes.json').readAsString());
    //print('compute languages json');
    // _languages = _buildlanguages(dataString);
    _languagesJsonDecoded = json.decode(dataString);

    _languages = {};

    _languagesJsonDecoded.forEach((int index, dynamic item) {
      _languages[item['alpha3-b']] = Map<String, String>.from(item);
    });
  }
}
