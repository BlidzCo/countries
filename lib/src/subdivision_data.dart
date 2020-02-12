library subdivision_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'subdivision_data.g.dart';

abstract class SubDivisionData
    implements Built<SubDivisionData, SubDivisionDataBuilder> {
  SubDivisionData._();

  factory SubDivisionData([updates(SubDivisionDataBuilder b)]) =
      _$SubDivisionData;

  @BuiltValueField(wireName: 'country')
  String get country;
  @BuiltValueField(wireName: 'parish')
  @nullable
  BuiltList<CountrySubDivision> get parish;
  @BuiltValueField(wireName: 'emirate')
  @nullable
  BuiltList<CountrySubDivision> get emirate;
  @BuiltValueField(wireName: 'province')
  @nullable
  BuiltList<CountrySubDivision> get province;
  @BuiltValueField(wireName: 'dependency')
  @nullable
  BuiltList<CountrySubDivision> get dependency;
  @BuiltValueField(wireName: 'state')
  @nullable
  BuiltList<CountrySubDivision> get state;
  @BuiltValueField(wireName: 'county')
  @nullable
  BuiltList<CountrySubDivision> get county;
  @BuiltValueField(wireName: 'region')
  @nullable
  BuiltList<CountrySubDivision> get region;
  @BuiltValueField(wireName: 'city')
  @nullable
  BuiltList<CountrySubDivision> get city;
  @BuiltValueField(wireName: 'territory')
  @nullable
  BuiltList<CountrySubDivision> get territory;
  @BuiltValueField(wireName: 'rayon')
  @nullable
  BuiltList<CountrySubDivision> get rayon;
  @BuiltValueField(wireName: 'municipality')
  @nullable
  BuiltList<CountrySubDivision> get municipality;
  @BuiltValueField(wireName: 'autonomous republic')
  @nullable
  BuiltList<CountrySubDivision> get autonomousRepublic;
  @BuiltValueField(wireName: 'entity')
  @nullable
  BuiltList<CountrySubDivision> get entity;
  @BuiltValueField(wireName: 'district with special status')
  @nullable
  BuiltList<CountrySubDivision> get districtWithSpecialStatus;
  @BuiltValueField(wireName: 'district')
  @nullable
  BuiltList<CountrySubDivision> get district;
  @BuiltValueField(wireName: 'governorat')
  @nullable
  BuiltList<CountrySubDivision> get governorat;
  @BuiltValueField(wireName: 'department')
  @nullable
  BuiltList<CountrySubDivision> get department;
  @BuiltValueField(wireName: 'special municipality')
  @nullable
  BuiltList<CountrySubDivision> get specialMunicipality;
  @BuiltValueField(wireName: 'federal district')
  @nullable
  BuiltList<CountrySubDivision> get federalDistrict;
  @BuiltValueField(wireName: 'town')
  @nullable
  BuiltList<CountrySubDivision> get town;
  @BuiltValueField(wireName: 'oblast')
  @nullable
  BuiltList<CountrySubDivision> get oblast;
  @BuiltValueField(wireName: 'prefecture')
  @nullable
  BuiltList<CountrySubDivision> get prefecture;
  @BuiltValueField(wireName: 'commune')
  @nullable
  BuiltList<CountrySubDivision> get commune;
  @BuiltValueField(wireName: 'economic prefecture')
  @nullable
  BuiltList<CountrySubDivision> get economicPrefecture;
  @BuiltValueField(wireName: 'canton')
  @nullable
  BuiltList<CountrySubDivision> get canton;
  @BuiltValueField(wireName: 'autonomous district')
  @nullable
  BuiltList<CountrySubDivision> get autonomousDistrict;
  @BuiltValueField(wireName: 'autonomous region')
  @nullable
  BuiltList<CountrySubDivision> get autonomousRegion;
  @BuiltValueField(wireName: 'special administrative region')
  @nullable
  BuiltList<CountrySubDivision> get specialAdministrativeRegion;
  @BuiltValueField(wireName: 'capital district')
  @nullable
  BuiltList<CountrySubDivision> get capitalDistrict;
  @BuiltValueField(wireName: 'lander')
  @nullable
  BuiltList<CountrySubDivision> get lander;
  @BuiltValueField(wireName: 'governorate')
  @nullable
  BuiltList<CountrySubDivision> get governorate;
  @BuiltValueField(wireName: 'autonomous city in north africa')
  @nullable
  BuiltList<CountrySubDivision> get autonomousCityInNorthAfrica;
  @BuiltValueField(wireName: 'administration')
  @nullable
  BuiltList<CountrySubDivision> get administration;
  @BuiltValueField(wireName: 'metropolitan department')
  @nullable
  BuiltList<CountrySubDivision> get metropolitanDepartment;
  @BuiltValueField(wireName: 'council area')
  @nullable
  BuiltList<CountrySubDivision> get councilArea;
  @BuiltValueField(wireName: 'unitary authority')
  @nullable
  BuiltList<CountrySubDivision> get unitaryAuthority;
  @BuiltValueField(wireName: 'district council area')
  @nullable
  BuiltList<CountrySubDivision> get districtCouncilArea;
  @BuiltValueField(wireName: 'london borough')
  @nullable
  BuiltList<CountrySubDivision> get londonBorough;
  @BuiltValueField(wireName: 'city corporation')
  @nullable
  BuiltList<CountrySubDivision> get cityCorporation;
  @BuiltValueField(wireName: 'division')
  @nullable
  BuiltList<CountrySubDivision> get division;
  @BuiltValueField(wireName: 'administrative region')
  @nullable
  BuiltList<CountrySubDivision> get administrativeRegion;
  @BuiltValueField(wireName: 'autonomous sector')
  @nullable
  BuiltList<CountrySubDivision> get autonomousSector;
  @BuiltValueField(wireName: 'city of county right')
  @nullable
  BuiltList<CountrySubDivision> get cityOfCountyRight;
  @BuiltValueField(wireName: 'capital city')
  @nullable
  BuiltList<CountrySubDivision> get capitalCity;
  @BuiltValueField(wireName: 'autononous province')
  @nullable
  BuiltList<CountrySubDivision> get autononousProvince;
  @BuiltValueField(wireName: 'special district')
  @nullable
  BuiltList<CountrySubDivision> get specialDistrict;
  @BuiltValueField(wireName: 'special region')
  @nullable
  BuiltList<CountrySubDivision> get specialRegion;
  @BuiltValueField(wireName: 'union territory')
  @nullable
  BuiltList<CountrySubDivision> get unionTerritory;
  @BuiltValueField(wireName: 'partish')
  @nullable
  BuiltList<CountrySubDivision> get partish;
  @BuiltValueField(wireName: 'autonomous municipality')
  @nullable
  BuiltList<CountrySubDivision> get autonomousMunicipality;
  @BuiltValueField(wireName: 'group of islands')
  @nullable
  BuiltList<CountrySubDivision> get groupOfIslands;
  @BuiltValueField(wireName: 'island')
  @nullable
  BuiltList<CountrySubDivision> get island;
  @BuiltValueField(wireName: 'special city')
  @nullable
  BuiltList<CountrySubDivision> get specialCity;
  @BuiltValueField(wireName: 'metropolitan city')
  @nullable
  BuiltList<CountrySubDivision> get metropolitanCity;
  @BuiltValueField(wireName: 'special self-governing province')
  @nullable
  BuiltList<CountrySubDivision> get specialSelfGoverningProvince;
  @BuiltValueField(wireName: 'special self-governing city')
  @nullable
  BuiltList<CountrySubDivision> get specialSelfGoverningCity;
  @BuiltValueField(wireName: 'district municipality')
  @nullable
  BuiltList<CountrySubDivision> get districtMunicipality;
  @BuiltValueField(wireName: 'city municipality')
  @nullable
  BuiltList<CountrySubDivision> get cityMunicipality;
  @BuiltValueField(wireName: 'republican city')
  @nullable
  BuiltList<CountrySubDivision> get republicanCity;
  @BuiltValueField(wireName: 'popularate')
  @nullable
  BuiltList<CountrySubDivision> get popularate;
  @BuiltValueField(wireName: 'economic region')
  @nullable
  BuiltList<CountrySubDivision> get economicRegion;
  @BuiltValueField(wireName: 'quarter')
  @nullable
  BuiltList<CountrySubDivision> get quarter;
  @BuiltValueField(wireName: 'autonomous territory unit')
  @nullable
  BuiltList<CountrySubDivision> get autonomousTerritoryUnit;
  @BuiltValueField(wireName: 'territorial unit')
  @nullable
  BuiltList<CountrySubDivision> get territorialUnit;
  @BuiltValueField(wireName: 'chains of islands')
  @nullable
  BuiltList<CountrySubDivision> get chainsOfIslands;
  @BuiltValueField(wireName: 'local council')
  @nullable
  BuiltList<CountrySubDivision> get localCouncil;
  @BuiltValueField(wireName: 'administrative atoll')
  @nullable
  BuiltList<CountrySubDivision> get administrativeAtoll;
  @BuiltValueField(wireName: 'capital')
  @nullable
  BuiltList<CountrySubDivision> get capital;
  @BuiltValueField(wireName: 'federal territory')
  @nullable
  BuiltList<CountrySubDivision> get federalTerritory;
  @BuiltValueField(wireName: 'urban community')
  @nullable
  BuiltList<CountrySubDivision> get urbanCommunity;
  @BuiltValueField(wireName: 'capital territory')
  @nullable
  BuiltList<CountrySubDivision> get capitalTerritory;
  @BuiltValueField(wireName: 'arctic region')
  @nullable
  BuiltList<CountrySubDivision> get arcticRegion;
  @BuiltValueField(wireName: 'zone')
  @nullable
  BuiltList<CountrySubDivision> get zone;
  @BuiltValueField(wireName: 'special island authorithy')
  @nullable
  BuiltList<CountrySubDivision> get specialIslandAuthorithy;
  @BuiltValueField(wireName: 'indigenous region')
  @nullable
  BuiltList<CountrySubDivision> get indigenousRegion;
  @BuiltValueField(wireName: 'pakistan administrered area')
  @nullable
  BuiltList<CountrySubDivision> get pakistanAdministreredArea;
  @BuiltValueField(wireName: 'federal capital territory')
  @nullable
  BuiltList<CountrySubDivision> get federalCapitalTerritory;
  @BuiltValueField(wireName: 'departments')
  @nullable
  BuiltList<CountrySubDivision> get departments;
  @BuiltValueField(wireName: 'autonomous province')
  @nullable
  BuiltList<CountrySubDivision> get autonomousProvince;
  @BuiltValueField(wireName: 'republic')
  @nullable
  BuiltList<CountrySubDivision> get republic;
  @BuiltValueField(wireName: 'administrative territory')
  @nullable
  BuiltList<CountrySubDivision> get administrativeTerritory;
  @BuiltValueField(wireName: 'autonomous city')
  @nullable
  BuiltList<CountrySubDivision> get autonomousCity;
  @BuiltValueField(wireName: 'geographical entity')
  @nullable
  BuiltList<CountrySubDivision> get geographicalEntity;
  @BuiltValueField(wireName: 'area')
  @nullable
  BuiltList<CountrySubDivision> get area;
  @BuiltValueField(wireName: 'metropolitan administration')
  @nullable
  BuiltList<CountrySubDivision> get metropolitanAdministration;
  @BuiltValueField(
      wireName: 'special administrative special administrative city')
  @nullable
  BuiltList<CountrySubDivision>
      get specialAdministrativeSpecialAdministrativeCity;
  @BuiltValueField(wireName: 'districts under republic administration')
  @nullable
  BuiltList<CountrySubDivision> get districtsUnderRepublicAdministration;
  @BuiltValueField(wireName: 'ward')
  @nullable
  BuiltList<CountrySubDivision> get ward;
  @BuiltValueField(wireName: 'town council')
  @nullable
  BuiltList<CountrySubDivision> get townCouncil;
  @BuiltValueField(wireName: 'island council')
  @nullable
  BuiltList<CountrySubDivision> get islandCouncil;
  @BuiltValueField(wireName: 'groups of islands')
  @nullable
  BuiltList<CountrySubDivision> get groupsOfIslands;
  @BuiltValueField(wireName: 'outlying area')
  @nullable
  BuiltList<CountrySubDivision> get outlyingArea;
  @BuiltValueField(wireName: 'federal dependencies')
  @nullable
  String toJson() {
    return json
        .encode(serializers.serializeWith(SubDivisionData.serializer, this));
  }

  static SubDivisionData fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubDivisionData.serializer, json.decode(jsonString));
  }

  static Serializer<SubDivisionData> get serializer =>
      _$subDivisionDataSerializer;
}

abstract class CountrySubDivision
    implements Built<CountrySubDivision, CountrySubDivisionBuilder> {
  CountrySubDivision._();

  factory CountrySubDivision([updates(CountrySubDivisionBuilder b)]) =
      _$CountrySubDivision;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CountrySubDivision.serializer, this));
  }

  static CountrySubDivision fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountrySubDivision.serializer, json.decode(jsonString));
  }

  static Serializer<CountrySubDivision> get serializer =>
      _$countrySubDivisionSerializer;
}
