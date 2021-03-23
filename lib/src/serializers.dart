import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'country_data.dart';
import 'subdivision_data.dart';

part 'serializers.g.dart';

//add all of the built value types that require serialization
@SerializersFor([
  CountryData,
  // SubDivisionData,
  CountryName,
  Currency,
  CountryIdd,
  CountryNameTranslation,
  CountrySubDivision
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T? deserialize<T>(dynamic value) =>
    serializers.deserializeWith(serializers.serializerForType(T)!, value) as T;

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
