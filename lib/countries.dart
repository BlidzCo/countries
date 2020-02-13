/// Support for doing something awesome.
///
/// More dartdocs go here.
library countries;

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

BuiltMap<String, SubDivisionData> _buildSubDivisions(dataString) {
  List<dynamic> data = json.decode(dataString);

  BuiltList subDivisionData = deserializeListOf<SubDivisionData>(data);
  return BuiltMap.from({
    for (var item in subDivisionData)
      (item as SubDivisionData).country: item as SubDivisionData
  });
}

class Country {
  final CountryData _countryData;
  final SubDivisionData _subDivisionData;

  Country(CountryData countryData, SubDivisionData subDivisionData)
      : _countryData = countryData,
        _subDivisionData = subDivisionData;

  SubDivisionData get subDivisions => _subDivisionData;
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
      _countriesFile,
      _subdivisionsFile;

  factory Countries(
      {String countriesFile = 'lib/countries.json',
      String subdivisionsFile = 'lib/subdivisions.json',
      String countriesJson,
      String subdivisionsJson}) {
    _countriesJson = countriesJson;
    _subdivisionsJson = subdivisionsJson;
    _countriesFile = countriesFile;
    _subdivisionsFile = subdivisionsFile;

    return _instance;
  }

  BuiltMap<String, CountryData> _countries;
  BuiltMap<String, SubDivisionData> _subdivisions;
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

      //print('execs started, wait...');

      return Future.wait([loadCountries, loadSubDivisions]);
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
}
