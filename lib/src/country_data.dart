library countries_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'country_data.g.dart';

abstract class CountryData implements Built<CountryData, CountryDataBuilder> {
  CountryData._();

  factory CountryData([Function(CountryDataBuilder b) updates]) = _$CountryData;

  @BuiltValueField(wireName: 'name')
  CountryName get name;
  @BuiltValueField(wireName: 'tld')
  BuiltList<String> get tld;
  @BuiltValueField(wireName: 'cca2')
  String get cca2;
  @BuiltValueField(wireName: 'ccn3')
  String get ccn3;
  @BuiltValueField(wireName: 'cca3')
  String get cca3;
  @BuiltValueField(wireName: 'cioc')
  String get cioc;
  @BuiltValueField(wireName: 'independent')
  bool? get independent;
  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'currencies')
  BuiltMap<String, Currency> get currencies;
  @BuiltValueField(wireName: 'idd')
  CountryIdd get idd;
  @BuiltValueField(wireName: 'capital')
  BuiltList<String> get capital;
  @BuiltValueField(wireName: 'altSpellings')
  BuiltList<String> get altSpellings;
  @BuiltValueField(wireName: 'region')
  String get region;
  @BuiltValueField(wireName: 'subregion')
  String get subregion;
  @BuiltValueField(wireName: 'languages')
  BuiltMap<String, String> get languages;
  @BuiltValueField(wireName: 'translations')
  BuiltMap<String, CountryNameTranslation> get translations;
  @BuiltValueField(wireName: 'latlng')
  BuiltList<double> get latlng;
  @BuiltValueField(wireName: 'demonym')
  String? get demonym;
  @BuiltValueField(wireName: 'landlocked')
  bool get landlocked;
  @BuiltValueField(wireName: 'borders')
  BuiltList<String> get borders;
  @BuiltValueField(wireName: 'area')
  double get area;
  @BuiltValueField(wireName: 'flag')
  String get flag;
  String toJson() {
    return json.encode(serializers.serializeWith(CountryData.serializer, this));
  }

  static CountryData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryData.serializer, json.decode(jsonString));
  }

  static Serializer<CountryData> get serializer => _$countryDataSerializer;
}
// library country_name;
// part 'country_name.g.dart';

abstract class CountryName implements Built<CountryName, CountryNameBuilder> {
  CountryName._();

  factory CountryName([Function(CountryNameBuilder b) updates]) = _$CountryName;

  @BuiltValueField(wireName: 'common')
  String get common;
  @BuiltValueField(wireName: 'official')
  String get official;
  @BuiltValueField(wireName: 'native')
  BuiltMap<String, CountryNameTranslation> get native;
  String toJson() {
    return json.encode(serializers.serializeWith(CountryName.serializer, this));
  }

  static CountryName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryName.serializer, json.decode(jsonString));
  }

  static Serializer<CountryName> get serializer => _$countryNameSerializer;
}

// library currencies;
// part 'currencies.g.dart';

abstract class Currency implements Built<Currency, CurrencyBuilder> {
  Currency._();

  factory Currency([Function(CurrencyBuilder b) updates]) = _$Currency;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'symbol')
  String get symbol;
  String toJson() {
    return json.encode(serializers.serializeWith(Currency.serializer, this));
  }

  static Currency? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Currency.serializer, json.decode(jsonString));
  }

  static Serializer<Currency> get serializer => _$currencySerializer;
}
// library idd;

// part 'idd.g.dart';

abstract class CountryIdd implements Built<CountryIdd, CountryIddBuilder> {
  CountryIdd._();

  factory CountryIdd([Function(CountryIddBuilder b) updates]) = _$CountryIdd;

  @BuiltValueField(wireName: 'root')
  String get root;
  @BuiltValueField(wireName: 'suffixes')
  BuiltList<String> get suffixes;
  String toJson() {
    return json.encode(serializers.serializeWith(CountryIdd.serializer, this));
  }

  static CountryIdd? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryIdd.serializer, json.decode(jsonString));
  }

  static Serializer<CountryIdd> get serializer => _$countryIddSerializer;
}

// library translations;
// part 'translations.g.dart';

abstract class CountryNameTranslation
    implements Built<CountryNameTranslation, CountryNameTranslationBuilder> {
  CountryNameTranslation._();

  factory CountryNameTranslation(
          [Function(CountryNameTranslationBuilder b) updates]) =
      _$CountryNameTranslation;

  @BuiltValueField(wireName: 'official')
  String get official;
  @BuiltValueField(wireName: 'common')
  String get common;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CountryNameTranslation.serializer, this));
  }

  static CountryNameTranslation? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryNameTranslation.serializer, json.decode(jsonString));
  }

  static Serializer<CountryNameTranslation> get serializer =>
      _$countryNameTranslationSerializer;
}
