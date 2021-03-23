// GENERATED CODE - DO NOT MODIFY BY HAND

part of countries_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryData> _$countryDataSerializer = new _$CountryDataSerializer();
Serializer<CountryName> _$countryNameSerializer = new _$CountryNameSerializer();
Serializer<Currency> _$currencySerializer = new _$CurrencySerializer();
Serializer<CountryIdd> _$countryIddSerializer = new _$CountryIddSerializer();
Serializer<CountryNameTranslation> _$countryNameTranslationSerializer =
    new _$CountryNameTranslationSerializer();

class _$CountryDataSerializer implements StructuredSerializer<CountryData> {
  @override
  final Iterable<Type> types = const [CountryData, _$CountryData];
  @override
  final String wireName = 'CountryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(CountryName)),
      'tld',
      serializers.serialize(object.tld,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'cca2',
      serializers.serialize(object.cca2, specifiedType: const FullType(String)),
      'ccn3',
      serializers.serialize(object.ccn3, specifiedType: const FullType(String)),
      'cca3',
      serializers.serialize(object.cca3, specifiedType: const FullType(String)),
      'cioc',
      serializers.serialize(object.cioc, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'currencies',
      serializers.serialize(object.currencies,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Currency)])),
      'idd',
      serializers.serialize(object.idd,
          specifiedType: const FullType(CountryIdd)),
      'capital',
      serializers.serialize(object.capital,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'altSpellings',
      serializers.serialize(object.altSpellings,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'subregion',
      serializers.serialize(object.subregion,
          specifiedType: const FullType(String)),
      'languages',
      serializers.serialize(object.languages,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'translations',
      serializers.serialize(object.translations,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(CountryNameTranslation)
          ])),
      'latlng',
      serializers.serialize(object.latlng,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'landlocked',
      serializers.serialize(object.landlocked,
          specifiedType: const FullType(bool)),
      'borders',
      serializers.serialize(object.borders,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'area',
      serializers.serialize(object.area, specifiedType: const FullType(double)),
      'flag',
      serializers.serialize(object.flag, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.independent;
    if (value != null) {
      result
        ..add('independent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.demonym;
    if (value != null) {
      result
        ..add('demonym')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountryData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name.replace(serializers.deserialize(value,
              specifiedType: const FullType(CountryName))! as CountryName);
          break;
        case 'tld':
          result.tld.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'cca2':
          result.cca2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ccn3':
          result.ccn3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cca3':
          result.cca3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cioc':
          result.cioc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'independent':
          result.independent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currencies':
          result.currencies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Currency)]))!);
          break;
        case 'idd':
          result.idd.replace(serializers.deserialize(value,
              specifiedType: const FullType(CountryIdd))! as CountryIdd);
          break;
        case 'capital':
          result.capital.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'altSpellings':
          result.altSpellings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subregion':
          result.subregion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(CountryNameTranslation)
              ]))!);
          break;
        case 'latlng':
          result.latlng.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object>);
          break;
        case 'demonym':
          result.demonym = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'landlocked':
          result.landlocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'borders':
          result.borders.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryNameSerializer implements StructuredSerializer<CountryName> {
  @override
  final Iterable<Type> types = const [CountryName, _$CountryName];
  @override
  final String wireName = 'CountryName';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountryName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'common',
      serializers.serialize(object.common,
          specifiedType: const FullType(String)),
      'official',
      serializers.serialize(object.official,
          specifiedType: const FullType(String)),
      'native',
      serializers.serialize(object.native,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(CountryNameTranslation)
          ])),
    ];

    return result;
  }

  @override
  CountryName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'common':
          result.common = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'official':
          result.official = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'native':
          result.native.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(CountryNameTranslation)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencySerializer implements StructuredSerializer<Currency> {
  @override
  final Iterable<Type> types = const [Currency, _$Currency];
  @override
  final String wireName = 'Currency';

  @override
  Iterable<Object?> serialize(Serializers serializers, Currency object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Currency deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryIddSerializer implements StructuredSerializer<CountryIdd> {
  @override
  final Iterable<Type> types = const [CountryIdd, _$CountryIdd];
  @override
  final String wireName = 'CountryIdd';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountryIdd object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'root',
      serializers.serialize(object.root, specifiedType: const FullType(String)),
      'suffixes',
      serializers.serialize(object.suffixes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  CountryIdd deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryIddBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'root':
          result.root = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suffixes':
          result.suffixes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CountryNameTranslationSerializer
    implements StructuredSerializer<CountryNameTranslation> {
  @override
  final Iterable<Type> types = const [
    CountryNameTranslation,
    _$CountryNameTranslation
  ];
  @override
  final String wireName = 'CountryNameTranslation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CountryNameTranslation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'official',
      serializers.serialize(object.official,
          specifiedType: const FullType(String)),
      'common',
      serializers.serialize(object.common,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CountryNameTranslation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryNameTranslationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'official':
          result.official = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'common':
          result.common = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryData extends CountryData {
  @override
  final CountryName name;
  @override
  final BuiltList<String> tld;
  @override
  final String cca2;
  @override
  final String ccn3;
  @override
  final String cca3;
  @override
  final String cioc;
  @override
  final bool? independent;
  @override
  final String status;
  @override
  final BuiltMap<String, Currency> currencies;
  @override
  final CountryIdd idd;
  @override
  final BuiltList<String> capital;
  @override
  final BuiltList<String> altSpellings;
  @override
  final String region;
  @override
  final String subregion;
  @override
  final BuiltMap<String, String> languages;
  @override
  final BuiltMap<String, CountryNameTranslation> translations;
  @override
  final BuiltList<double> latlng;
  @override
  final String? demonym;
  @override
  final bool landlocked;
  @override
  final BuiltList<String> borders;
  @override
  final double area;
  @override
  final String flag;

  factory _$CountryData([void Function(CountryDataBuilder)? updates]) =>
      (new CountryDataBuilder()..update(updates)).build();

  _$CountryData._(
      {required this.name,
      required this.tld,
      required this.cca2,
      required this.ccn3,
      required this.cca3,
      required this.cioc,
      this.independent,
      required this.status,
      required this.currencies,
      required this.idd,
      required this.capital,
      required this.altSpellings,
      required this.region,
      required this.subregion,
      required this.languages,
      required this.translations,
      required this.latlng,
      this.demonym,
      required this.landlocked,
      required this.borders,
      required this.area,
      required this.flag})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'CountryData', 'name');
    BuiltValueNullFieldError.checkNotNull(tld, 'CountryData', 'tld');
    BuiltValueNullFieldError.checkNotNull(cca2, 'CountryData', 'cca2');
    BuiltValueNullFieldError.checkNotNull(ccn3, 'CountryData', 'ccn3');
    BuiltValueNullFieldError.checkNotNull(cca3, 'CountryData', 'cca3');
    BuiltValueNullFieldError.checkNotNull(cioc, 'CountryData', 'cioc');
    BuiltValueNullFieldError.checkNotNull(status, 'CountryData', 'status');
    BuiltValueNullFieldError.checkNotNull(
        currencies, 'CountryData', 'currencies');
    BuiltValueNullFieldError.checkNotNull(idd, 'CountryData', 'idd');
    BuiltValueNullFieldError.checkNotNull(capital, 'CountryData', 'capital');
    BuiltValueNullFieldError.checkNotNull(
        altSpellings, 'CountryData', 'altSpellings');
    BuiltValueNullFieldError.checkNotNull(region, 'CountryData', 'region');
    BuiltValueNullFieldError.checkNotNull(
        subregion, 'CountryData', 'subregion');
    BuiltValueNullFieldError.checkNotNull(
        languages, 'CountryData', 'languages');
    BuiltValueNullFieldError.checkNotNull(
        translations, 'CountryData', 'translations');
    BuiltValueNullFieldError.checkNotNull(latlng, 'CountryData', 'latlng');
    BuiltValueNullFieldError.checkNotNull(
        landlocked, 'CountryData', 'landlocked');
    BuiltValueNullFieldError.checkNotNull(borders, 'CountryData', 'borders');
    BuiltValueNullFieldError.checkNotNull(area, 'CountryData', 'area');
    BuiltValueNullFieldError.checkNotNull(flag, 'CountryData', 'flag');
  }

  @override
  CountryData rebuild(void Function(CountryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDataBuilder toBuilder() => new CountryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryData &&
        name == other.name &&
        tld == other.tld &&
        cca2 == other.cca2 &&
        ccn3 == other.ccn3 &&
        cca3 == other.cca3 &&
        cioc == other.cioc &&
        independent == other.independent &&
        status == other.status &&
        currencies == other.currencies &&
        idd == other.idd &&
        capital == other.capital &&
        altSpellings == other.altSpellings &&
        region == other.region &&
        subregion == other.subregion &&
        languages == other.languages &&
        translations == other.translations &&
        latlng == other.latlng &&
        demonym == other.demonym &&
        landlocked == other.landlocked &&
        borders == other.borders &&
        area == other.area &&
        flag == other.flag;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, name.hashCode), tld.hashCode), cca2.hashCode),
                                                                                ccn3.hashCode),
                                                                            cca3.hashCode),
                                                                        cioc.hashCode),
                                                                    independent.hashCode),
                                                                status.hashCode),
                                                            currencies.hashCode),
                                                        idd.hashCode),
                                                    capital.hashCode),
                                                altSpellings.hashCode),
                                            region.hashCode),
                                        subregion.hashCode),
                                    languages.hashCode),
                                translations.hashCode),
                            latlng.hashCode),
                        demonym.hashCode),
                    landlocked.hashCode),
                borders.hashCode),
            area.hashCode),
        flag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryData')
          ..add('name', name)
          ..add('tld', tld)
          ..add('cca2', cca2)
          ..add('ccn3', ccn3)
          ..add('cca3', cca3)
          ..add('cioc', cioc)
          ..add('independent', independent)
          ..add('status', status)
          ..add('currencies', currencies)
          ..add('idd', idd)
          ..add('capital', capital)
          ..add('altSpellings', altSpellings)
          ..add('region', region)
          ..add('subregion', subregion)
          ..add('languages', languages)
          ..add('translations', translations)
          ..add('latlng', latlng)
          ..add('demonym', demonym)
          ..add('landlocked', landlocked)
          ..add('borders', borders)
          ..add('area', area)
          ..add('flag', flag))
        .toString();
  }
}

class CountryDataBuilder implements Builder<CountryData, CountryDataBuilder> {
  _$CountryData? _$v;

  CountryNameBuilder? _name;
  CountryNameBuilder get name => _$this._name ??= new CountryNameBuilder();
  set name(CountryNameBuilder? name) => _$this._name = name;

  ListBuilder<String>? _tld;
  ListBuilder<String> get tld => _$this._tld ??= new ListBuilder<String>();
  set tld(ListBuilder<String>? tld) => _$this._tld = tld;

  String? _cca2;
  String? get cca2 => _$this._cca2;
  set cca2(String? cca2) => _$this._cca2 = cca2;

  String? _ccn3;
  String? get ccn3 => _$this._ccn3;
  set ccn3(String? ccn3) => _$this._ccn3 = ccn3;

  String? _cca3;
  String? get cca3 => _$this._cca3;
  set cca3(String? cca3) => _$this._cca3 = cca3;

  String? _cioc;
  String? get cioc => _$this._cioc;
  set cioc(String? cioc) => _$this._cioc = cioc;

  bool? _independent;
  bool? get independent => _$this._independent;
  set independent(bool? independent) => _$this._independent = independent;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, Currency>? _currencies;
  MapBuilder<String, Currency> get currencies =>
      _$this._currencies ??= new MapBuilder<String, Currency>();
  set currencies(MapBuilder<String, Currency>? currencies) =>
      _$this._currencies = currencies;

  CountryIddBuilder? _idd;
  CountryIddBuilder get idd => _$this._idd ??= new CountryIddBuilder();
  set idd(CountryIddBuilder? idd) => _$this._idd = idd;

  ListBuilder<String>? _capital;
  ListBuilder<String> get capital =>
      _$this._capital ??= new ListBuilder<String>();
  set capital(ListBuilder<String>? capital) => _$this._capital = capital;

  ListBuilder<String>? _altSpellings;
  ListBuilder<String> get altSpellings =>
      _$this._altSpellings ??= new ListBuilder<String>();
  set altSpellings(ListBuilder<String>? altSpellings) =>
      _$this._altSpellings = altSpellings;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _subregion;
  String? get subregion => _$this._subregion;
  set subregion(String? subregion) => _$this._subregion = subregion;

  MapBuilder<String, String>? _languages;
  MapBuilder<String, String> get languages =>
      _$this._languages ??= new MapBuilder<String, String>();
  set languages(MapBuilder<String, String>? languages) =>
      _$this._languages = languages;

  MapBuilder<String, CountryNameTranslation>? _translations;
  MapBuilder<String, CountryNameTranslation> get translations =>
      _$this._translations ??= new MapBuilder<String, CountryNameTranslation>();
  set translations(MapBuilder<String, CountryNameTranslation>? translations) =>
      _$this._translations = translations;

  ListBuilder<double>? _latlng;
  ListBuilder<double> get latlng =>
      _$this._latlng ??= new ListBuilder<double>();
  set latlng(ListBuilder<double>? latlng) => _$this._latlng = latlng;

  String? _demonym;
  String? get demonym => _$this._demonym;
  set demonym(String? demonym) => _$this._demonym = demonym;

  bool? _landlocked;
  bool? get landlocked => _$this._landlocked;
  set landlocked(bool? landlocked) => _$this._landlocked = landlocked;

  ListBuilder<String>? _borders;
  ListBuilder<String> get borders =>
      _$this._borders ??= new ListBuilder<String>();
  set borders(ListBuilder<String>? borders) => _$this._borders = borders;

  double? _area;
  double? get area => _$this._area;
  set area(double? area) => _$this._area = area;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  CountryDataBuilder();

  CountryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name.toBuilder();
      _tld = $v.tld.toBuilder();
      _cca2 = $v.cca2;
      _ccn3 = $v.ccn3;
      _cca3 = $v.cca3;
      _cioc = $v.cioc;
      _independent = $v.independent;
      _status = $v.status;
      _currencies = $v.currencies.toBuilder();
      _idd = $v.idd.toBuilder();
      _capital = $v.capital.toBuilder();
      _altSpellings = $v.altSpellings.toBuilder();
      _region = $v.region;
      _subregion = $v.subregion;
      _languages = $v.languages.toBuilder();
      _translations = $v.translations.toBuilder();
      _latlng = $v.latlng.toBuilder();
      _demonym = $v.demonym;
      _landlocked = $v.landlocked;
      _borders = $v.borders.toBuilder();
      _area = $v.area;
      _flag = $v.flag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryData;
  }

  @override
  void update(void Function(CountryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryData build() {
    _$CountryData _$result;
    try {
      _$result = _$v ??
          new _$CountryData._(
              name: name.build(),
              tld: tld.build(),
              cca2: BuiltValueNullFieldError.checkNotNull(
                  cca2, 'CountryData', 'cca2'),
              ccn3: BuiltValueNullFieldError.checkNotNull(
                  ccn3, 'CountryData', 'ccn3'),
              cca3: BuiltValueNullFieldError.checkNotNull(
                  cca3, 'CountryData', 'cca3'),
              cioc: BuiltValueNullFieldError.checkNotNull(
                  cioc, 'CountryData', 'cioc'),
              independent: independent,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'CountryData', 'status'),
              currencies: currencies.build(),
              idd: idd.build(),
              capital: capital.build(),
              altSpellings: altSpellings.build(),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, 'CountryData', 'region'),
              subregion: BuiltValueNullFieldError.checkNotNull(
                  subregion, 'CountryData', 'subregion'),
              languages: languages.build(),
              translations: translations.build(),
              latlng: latlng.build(),
              demonym: demonym,
              landlocked: BuiltValueNullFieldError.checkNotNull(
                  landlocked, 'CountryData', 'landlocked'),
              borders: borders.build(),
              area: BuiltValueNullFieldError.checkNotNull(
                  area, 'CountryData', 'area'),
              flag: BuiltValueNullFieldError.checkNotNull(
                  flag, 'CountryData', 'flag'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        name.build();
        _$failedField = 'tld';
        tld.build();

        _$failedField = 'currencies';
        currencies.build();
        _$failedField = 'idd';
        idd.build();
        _$failedField = 'capital';
        capital.build();
        _$failedField = 'altSpellings';
        altSpellings.build();

        _$failedField = 'languages';
        languages.build();
        _$failedField = 'translations';
        translations.build();
        _$failedField = 'latlng';
        latlng.build();

        _$failedField = 'borders';
        borders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CountryName extends CountryName {
  @override
  final String common;
  @override
  final String official;
  @override
  final BuiltMap<String, CountryNameTranslation> native;

  factory _$CountryName([void Function(CountryNameBuilder)? updates]) =>
      (new CountryNameBuilder()..update(updates)).build();

  _$CountryName._(
      {required this.common, required this.official, required this.native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(common, 'CountryName', 'common');
    BuiltValueNullFieldError.checkNotNull(official, 'CountryName', 'official');
    BuiltValueNullFieldError.checkNotNull(native, 'CountryName', 'native');
  }

  @override
  CountryName rebuild(void Function(CountryNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryNameBuilder toBuilder() => new CountryNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryName &&
        common == other.common &&
        official == other.official &&
        native == other.native;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, common.hashCode), official.hashCode), native.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryName')
          ..add('common', common)
          ..add('official', official)
          ..add('native', native))
        .toString();
  }
}

class CountryNameBuilder implements Builder<CountryName, CountryNameBuilder> {
  _$CountryName? _$v;

  String? _common;
  String? get common => _$this._common;
  set common(String? common) => _$this._common = common;

  String? _official;
  String? get official => _$this._official;
  set official(String? official) => _$this._official = official;

  MapBuilder<String, CountryNameTranslation>? _native;
  MapBuilder<String, CountryNameTranslation> get native =>
      _$this._native ??= new MapBuilder<String, CountryNameTranslation>();
  set native(MapBuilder<String, CountryNameTranslation>? native) =>
      _$this._native = native;

  CountryNameBuilder();

  CountryNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _common = $v.common;
      _official = $v.official;
      _native = $v.native.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryName;
  }

  @override
  void update(void Function(CountryNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryName build() {
    _$CountryName _$result;
    try {
      _$result = _$v ??
          new _$CountryName._(
              common: BuiltValueNullFieldError.checkNotNull(
                  common, 'CountryName', 'common'),
              official: BuiltValueNullFieldError.checkNotNull(
                  official, 'CountryName', 'official'),
              native: native.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'native';
        native.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryName', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Currency extends Currency {
  @override
  final String name;
  @override
  final String symbol;

  factory _$Currency([void Function(CurrencyBuilder)? updates]) =>
      (new CurrencyBuilder()..update(updates)).build();

  _$Currency._({required this.name, required this.symbol}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Currency', 'name');
    BuiltValueNullFieldError.checkNotNull(symbol, 'Currency', 'symbol');
  }

  @override
  Currency rebuild(void Function(CurrencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBuilder toBuilder() => new CurrencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Currency && name == other.name && symbol == other.symbol;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), symbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Currency')
          ..add('name', name)
          ..add('symbol', symbol))
        .toString();
  }
}

class CurrencyBuilder implements Builder<Currency, CurrencyBuilder> {
  _$Currency? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  CurrencyBuilder();

  CurrencyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Currency other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Currency;
  }

  @override
  void update(void Function(CurrencyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Currency build() {
    final _$result = _$v ??
        new _$Currency._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Currency', 'name'),
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, 'Currency', 'symbol'));
    replace(_$result);
    return _$result;
  }
}

class _$CountryIdd extends CountryIdd {
  @override
  final String root;
  @override
  final BuiltList<String> suffixes;

  factory _$CountryIdd([void Function(CountryIddBuilder)? updates]) =>
      (new CountryIddBuilder()..update(updates)).build();

  _$CountryIdd._({required this.root, required this.suffixes}) : super._() {
    BuiltValueNullFieldError.checkNotNull(root, 'CountryIdd', 'root');
    BuiltValueNullFieldError.checkNotNull(suffixes, 'CountryIdd', 'suffixes');
  }

  @override
  CountryIdd rebuild(void Function(CountryIddBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryIddBuilder toBuilder() => new CountryIddBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryIdd &&
        root == other.root &&
        suffixes == other.suffixes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, root.hashCode), suffixes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryIdd')
          ..add('root', root)
          ..add('suffixes', suffixes))
        .toString();
  }
}

class CountryIddBuilder implements Builder<CountryIdd, CountryIddBuilder> {
  _$CountryIdd? _$v;

  String? _root;
  String? get root => _$this._root;
  set root(String? root) => _$this._root = root;

  ListBuilder<String>? _suffixes;
  ListBuilder<String> get suffixes =>
      _$this._suffixes ??= new ListBuilder<String>();
  set suffixes(ListBuilder<String>? suffixes) => _$this._suffixes = suffixes;

  CountryIddBuilder();

  CountryIddBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _root = $v.root;
      _suffixes = $v.suffixes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryIdd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryIdd;
  }

  @override
  void update(void Function(CountryIddBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryIdd build() {
    _$CountryIdd _$result;
    try {
      _$result = _$v ??
          new _$CountryIdd._(
              root: BuiltValueNullFieldError.checkNotNull(
                  root, 'CountryIdd', 'root'),
              suffixes: suffixes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suffixes';
        suffixes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryIdd', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CountryNameTranslation extends CountryNameTranslation {
  @override
  final String official;
  @override
  final String common;

  factory _$CountryNameTranslation(
          [void Function(CountryNameTranslationBuilder)? updates]) =>
      (new CountryNameTranslationBuilder()..update(updates)).build();

  _$CountryNameTranslation._({required this.official, required this.common})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        official, 'CountryNameTranslation', 'official');
    BuiltValueNullFieldError.checkNotNull(
        common, 'CountryNameTranslation', 'common');
  }

  @override
  CountryNameTranslation rebuild(
          void Function(CountryNameTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryNameTranslationBuilder toBuilder() =>
      new CountryNameTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryNameTranslation &&
        official == other.official &&
        common == other.common;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, official.hashCode), common.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryNameTranslation')
          ..add('official', official)
          ..add('common', common))
        .toString();
  }
}

class CountryNameTranslationBuilder
    implements Builder<CountryNameTranslation, CountryNameTranslationBuilder> {
  _$CountryNameTranslation? _$v;

  String? _official;
  String? get official => _$this._official;
  set official(String? official) => _$this._official = official;

  String? _common;
  String? get common => _$this._common;
  set common(String? common) => _$this._common = common;

  CountryNameTranslationBuilder();

  CountryNameTranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _official = $v.official;
      _common = $v.common;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryNameTranslation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryNameTranslation;
  }

  @override
  void update(void Function(CountryNameTranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryNameTranslation build() {
    final _$result = _$v ??
        new _$CountryNameTranslation._(
            official: BuiltValueNullFieldError.checkNotNull(
                official, 'CountryNameTranslation', 'official'),
            common: BuiltValueNullFieldError.checkNotNull(
                common, 'CountryNameTranslation', 'common'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
