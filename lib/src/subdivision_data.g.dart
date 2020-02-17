// GENERATED CODE - DO NOT MODIFY BY HAND

part of subdivision_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountrySubDivision> _$countrySubDivisionSerializer =
    new _$CountrySubDivisionSerializer();

class _$CountrySubDivisionSerializer
    implements StructuredSerializer<CountrySubDivision> {
  @override
  final Iterable<Type> types = const [CountrySubDivision, _$CountrySubDivision];
  @override
  final String wireName = 'CountrySubDivision';

  @override
  Iterable<Object> serialize(Serializers serializers, CountrySubDivision object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountrySubDivision deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountrySubDivisionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountrySubDivision extends CountrySubDivision {
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;

  factory _$CountrySubDivision(
          [void Function(CountrySubDivisionBuilder) updates]) =>
      (new CountrySubDivisionBuilder()..update(updates)).build();

  _$CountrySubDivision._({this.id, this.name, this.type}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CountrySubDivision', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CountrySubDivision', 'name');
    }
  }

  @override
  CountrySubDivision rebuild(
          void Function(CountrySubDivisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountrySubDivisionBuilder toBuilder() =>
      new CountrySubDivisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountrySubDivision &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountrySubDivision')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class CountrySubDivisionBuilder
    implements Builder<CountrySubDivision, CountrySubDivisionBuilder> {
  _$CountrySubDivision _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  CountrySubDivisionBuilder();

  CountrySubDivisionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountrySubDivision other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountrySubDivision;
  }

  @override
  void update(void Function(CountrySubDivisionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountrySubDivision build() {
    final _$result =
        _$v ?? new _$CountrySubDivision._(id: id, name: name, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
