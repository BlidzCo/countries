// GENERATED CODE - DO NOT MODIFY BY HAND

part of subdivision_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubDivisionData> _$subDivisionDataSerializer =
    new _$SubDivisionDataSerializer();
Serializer<CountrySubDivision> _$countrySubDivisionSerializer =
    new _$CountrySubDivisionSerializer();

class _$SubDivisionDataSerializer
    implements StructuredSerializer<SubDivisionData> {
  @override
  final Iterable<Type> types = const [SubDivisionData, _$SubDivisionData];
  @override
  final String wireName = 'SubDivisionData';

  @override
  Iterable<Object> serialize(Serializers serializers, SubDivisionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
    ];
    if (object.parish != null) {
      result
        ..add('parish')
        ..add(serializers.serialize(object.parish,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.emirate != null) {
      result
        ..add('emirate')
        ..add(serializers.serialize(object.emirate,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.province != null) {
      result
        ..add('province')
        ..add(serializers.serialize(object.province,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.dependency != null) {
      result
        ..add('dependency')
        ..add(serializers.serialize(object.dependency,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.county != null) {
      result
        ..add('county')
        ..add(serializers.serialize(object.county,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.region != null) {
      result
        ..add('region')
        ..add(serializers.serialize(object.region,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.territory != null) {
      result
        ..add('territory')
        ..add(serializers.serialize(object.territory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.rayon != null) {
      result
        ..add('rayon')
        ..add(serializers.serialize(object.rayon,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.municipality != null) {
      result
        ..add('municipality')
        ..add(serializers.serialize(object.municipality,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousRepublic != null) {
      result
        ..add('autonomous republic')
        ..add(serializers.serialize(object.autonomousRepublic,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.entity != null) {
      result
        ..add('entity')
        ..add(serializers.serialize(object.entity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.districtWithSpecialStatus != null) {
      result
        ..add('district with special status')
        ..add(serializers.serialize(object.districtWithSpecialStatus,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.district != null) {
      result
        ..add('district')
        ..add(serializers.serialize(object.district,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.governorat != null) {
      result
        ..add('governorat')
        ..add(serializers.serialize(object.governorat,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.department != null) {
      result
        ..add('department')
        ..add(serializers.serialize(object.department,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialMunicipality != null) {
      result
        ..add('special municipality')
        ..add(serializers.serialize(object.specialMunicipality,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.federalDistrict != null) {
      result
        ..add('federal district')
        ..add(serializers.serialize(object.federalDistrict,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.town != null) {
      result
        ..add('town')
        ..add(serializers.serialize(object.town,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.oblast != null) {
      result
        ..add('oblast')
        ..add(serializers.serialize(object.oblast,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.prefecture != null) {
      result
        ..add('prefecture')
        ..add(serializers.serialize(object.prefecture,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.commune != null) {
      result
        ..add('commune')
        ..add(serializers.serialize(object.commune,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.economicPrefecture != null) {
      result
        ..add('economic prefecture')
        ..add(serializers.serialize(object.economicPrefecture,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.canton != null) {
      result
        ..add('canton')
        ..add(serializers.serialize(object.canton,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousDistrict != null) {
      result
        ..add('autonomous district')
        ..add(serializers.serialize(object.autonomousDistrict,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousRegion != null) {
      result
        ..add('autonomous region')
        ..add(serializers.serialize(object.autonomousRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialAdministrativeRegion != null) {
      result
        ..add('special administrative region')
        ..add(serializers.serialize(object.specialAdministrativeRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.capitalDistrict != null) {
      result
        ..add('capital district')
        ..add(serializers.serialize(object.capitalDistrict,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.lander != null) {
      result
        ..add('lander')
        ..add(serializers.serialize(object.lander,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.governorate != null) {
      result
        ..add('governorate')
        ..add(serializers.serialize(object.governorate,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousCityInNorthAfrica != null) {
      result
        ..add('autonomous city in north africa')
        ..add(serializers.serialize(object.autonomousCityInNorthAfrica,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.administration != null) {
      result
        ..add('administration')
        ..add(serializers.serialize(object.administration,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.metropolitanDepartment != null) {
      result
        ..add('metropolitan department')
        ..add(serializers.serialize(object.metropolitanDepartment,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.councilArea != null) {
      result
        ..add('council area')
        ..add(serializers.serialize(object.councilArea,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.unitaryAuthority != null) {
      result
        ..add('unitary authority')
        ..add(serializers.serialize(object.unitaryAuthority,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.districtCouncilArea != null) {
      result
        ..add('district council area')
        ..add(serializers.serialize(object.districtCouncilArea,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.londonBorough != null) {
      result
        ..add('london borough')
        ..add(serializers.serialize(object.londonBorough,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.cityCorporation != null) {
      result
        ..add('city corporation')
        ..add(serializers.serialize(object.cityCorporation,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.division != null) {
      result
        ..add('division')
        ..add(serializers.serialize(object.division,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.administrativeRegion != null) {
      result
        ..add('administrative region')
        ..add(serializers.serialize(object.administrativeRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousSector != null) {
      result
        ..add('autonomous sector')
        ..add(serializers.serialize(object.autonomousSector,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.cityOfCountyRight != null) {
      result
        ..add('city of county right')
        ..add(serializers.serialize(object.cityOfCountyRight,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.capitalCity != null) {
      result
        ..add('capital city')
        ..add(serializers.serialize(object.capitalCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autononousProvince != null) {
      result
        ..add('autononous province')
        ..add(serializers.serialize(object.autononousProvince,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialDistrict != null) {
      result
        ..add('special district')
        ..add(serializers.serialize(object.specialDistrict,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialRegion != null) {
      result
        ..add('special region')
        ..add(serializers.serialize(object.specialRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.unionTerritory != null) {
      result
        ..add('union territory')
        ..add(serializers.serialize(object.unionTerritory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.partish != null) {
      result
        ..add('partish')
        ..add(serializers.serialize(object.partish,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousMunicipality != null) {
      result
        ..add('autonomous municipality')
        ..add(serializers.serialize(object.autonomousMunicipality,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.groupOfIslands != null) {
      result
        ..add('group of islands')
        ..add(serializers.serialize(object.groupOfIslands,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.island != null) {
      result
        ..add('island')
        ..add(serializers.serialize(object.island,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialCity != null) {
      result
        ..add('special city')
        ..add(serializers.serialize(object.specialCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.metropolitanCity != null) {
      result
        ..add('metropolitan city')
        ..add(serializers.serialize(object.metropolitanCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialSelfGoverningProvince != null) {
      result
        ..add('special self-governing province')
        ..add(serializers.serialize(object.specialSelfGoverningProvince,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialSelfGoverningCity != null) {
      result
        ..add('special self-governing city')
        ..add(serializers.serialize(object.specialSelfGoverningCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.districtMunicipality != null) {
      result
        ..add('district municipality')
        ..add(serializers.serialize(object.districtMunicipality,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.cityMunicipality != null) {
      result
        ..add('city municipality')
        ..add(serializers.serialize(object.cityMunicipality,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.republicanCity != null) {
      result
        ..add('republican city')
        ..add(serializers.serialize(object.republicanCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.popularate != null) {
      result
        ..add('popularate')
        ..add(serializers.serialize(object.popularate,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.economicRegion != null) {
      result
        ..add('economic region')
        ..add(serializers.serialize(object.economicRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.quarter != null) {
      result
        ..add('quarter')
        ..add(serializers.serialize(object.quarter,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousTerritoryUnit != null) {
      result
        ..add('autonomous territory unit')
        ..add(serializers.serialize(object.autonomousTerritoryUnit,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.territorialUnit != null) {
      result
        ..add('territorial unit')
        ..add(serializers.serialize(object.territorialUnit,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.chainsOfIslands != null) {
      result
        ..add('chains of islands')
        ..add(serializers.serialize(object.chainsOfIslands,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.localCouncil != null) {
      result
        ..add('local council')
        ..add(serializers.serialize(object.localCouncil,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.administrativeAtoll != null) {
      result
        ..add('administrative atoll')
        ..add(serializers.serialize(object.administrativeAtoll,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.capital != null) {
      result
        ..add('capital')
        ..add(serializers.serialize(object.capital,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.federalTerritory != null) {
      result
        ..add('federal territory')
        ..add(serializers.serialize(object.federalTerritory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.urbanCommunity != null) {
      result
        ..add('urban community')
        ..add(serializers.serialize(object.urbanCommunity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.capitalTerritory != null) {
      result
        ..add('capital territory')
        ..add(serializers.serialize(object.capitalTerritory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.arcticRegion != null) {
      result
        ..add('arctic region')
        ..add(serializers.serialize(object.arcticRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.zone != null) {
      result
        ..add('zone')
        ..add(serializers.serialize(object.zone,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialIslandAuthorithy != null) {
      result
        ..add('special island authorithy')
        ..add(serializers.serialize(object.specialIslandAuthorithy,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.indigenousRegion != null) {
      result
        ..add('indigenous region')
        ..add(serializers.serialize(object.indigenousRegion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.pakistanAdministreredArea != null) {
      result
        ..add('pakistan administrered area')
        ..add(serializers.serialize(object.pakistanAdministreredArea,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.federalCapitalTerritory != null) {
      result
        ..add('federal capital territory')
        ..add(serializers.serialize(object.federalCapitalTerritory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.departments != null) {
      result
        ..add('departments')
        ..add(serializers.serialize(object.departments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousProvince != null) {
      result
        ..add('autonomous province')
        ..add(serializers.serialize(object.autonomousProvince,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.republic != null) {
      result
        ..add('republic')
        ..add(serializers.serialize(object.republic,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.administrativeTerritory != null) {
      result
        ..add('administrative territory')
        ..add(serializers.serialize(object.administrativeTerritory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.autonomousCity != null) {
      result
        ..add('autonomous city')
        ..add(serializers.serialize(object.autonomousCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.geographicalEntity != null) {
      result
        ..add('geographical entity')
        ..add(serializers.serialize(object.geographicalEntity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.area != null) {
      result
        ..add('area')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.metropolitanAdministration != null) {
      result
        ..add('metropolitan administration')
        ..add(serializers.serialize(object.metropolitanAdministration,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.specialAdministrativeSpecialAdministrativeCity != null) {
      result
        ..add('special administrative special administrative city')
        ..add(serializers.serialize(
            object.specialAdministrativeSpecialAdministrativeCity,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.districtsUnderRepublicAdministration != null) {
      result
        ..add('districts under republic administration')
        ..add(serializers.serialize(object.districtsUnderRepublicAdministration,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.ward != null) {
      result
        ..add('ward')
        ..add(serializers.serialize(object.ward,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.townCouncil != null) {
      result
        ..add('town council')
        ..add(serializers.serialize(object.townCouncil,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.islandCouncil != null) {
      result
        ..add('island council')
        ..add(serializers.serialize(object.islandCouncil,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.groupsOfIslands != null) {
      result
        ..add('groups of islands')
        ..add(serializers.serialize(object.groupsOfIslands,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    if (object.outlyingArea != null) {
      result
        ..add('outlying area')
        ..add(serializers.serialize(object.outlyingArea,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountrySubDivision)])));
    }
    return result;
  }

  @override
  SubDivisionData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubDivisionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parish':
          result.parish.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'emirate':
          result.emirate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'province':
          result.province.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'dependency':
          result.dependency.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'state':
          result.state.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'county':
          result.county.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'region':
          result.region.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'territory':
          result.territory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'rayon':
          result.rayon.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'municipality':
          result.municipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous republic':
          result.autonomousRepublic.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'entity':
          result.entity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'district with special status':
          result.districtWithSpecialStatus.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'district':
          result.district.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'governorat':
          result.governorat.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'department':
          result.department.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special municipality':
          result.specialMunicipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'federal district':
          result.federalDistrict.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'town':
          result.town.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'oblast':
          result.oblast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'prefecture':
          result.prefecture.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'commune':
          result.commune.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'economic prefecture':
          result.economicPrefecture.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'canton':
          result.canton.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous district':
          result.autonomousDistrict.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous region':
          result.autonomousRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special administrative region':
          result.specialAdministrativeRegion.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'capital district':
          result.capitalDistrict.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'lander':
          result.lander.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'governorate':
          result.governorate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous city in north africa':
          result.autonomousCityInNorthAfrica.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'administration':
          result.administration.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'metropolitan department':
          result.metropolitanDepartment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'council area':
          result.councilArea.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'unitary authority':
          result.unitaryAuthority.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'district council area':
          result.districtCouncilArea.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'london borough':
          result.londonBorough.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'city corporation':
          result.cityCorporation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'division':
          result.division.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'administrative region':
          result.administrativeRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous sector':
          result.autonomousSector.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'city of county right':
          result.cityOfCountyRight.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'capital city':
          result.capitalCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autononous province':
          result.autononousProvince.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special district':
          result.specialDistrict.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special region':
          result.specialRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'union territory':
          result.unionTerritory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'partish':
          result.partish.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous municipality':
          result.autonomousMunicipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'group of islands':
          result.groupOfIslands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'island':
          result.island.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special city':
          result.specialCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'metropolitan city':
          result.metropolitanCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special self-governing province':
          result.specialSelfGoverningProvince.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special self-governing city':
          result.specialSelfGoverningCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'district municipality':
          result.districtMunicipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'city municipality':
          result.cityMunicipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'republican city':
          result.republicanCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'popularate':
          result.popularate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'economic region':
          result.economicRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'quarter':
          result.quarter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous territory unit':
          result.autonomousTerritoryUnit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'territorial unit':
          result.territorialUnit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'chains of islands':
          result.chainsOfIslands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'local council':
          result.localCouncil.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'administrative atoll':
          result.administrativeAtoll.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'capital':
          result.capital.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'federal territory':
          result.federalTerritory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'urban community':
          result.urbanCommunity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'capital territory':
          result.capitalTerritory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'arctic region':
          result.arcticRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'zone':
          result.zone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special island authorithy':
          result.specialIslandAuthorithy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'indigenous region':
          result.indigenousRegion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'pakistan administrered area':
          result.pakistanAdministreredArea.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'federal capital territory':
          result.federalCapitalTerritory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'departments':
          result.departments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous province':
          result.autonomousProvince.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'republic':
          result.republic.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'administrative territory':
          result.administrativeTerritory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'autonomous city':
          result.autonomousCity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'geographical entity':
          result.geographicalEntity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'area':
          result.area.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'metropolitan administration':
          result.metropolitanAdministration.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'special administrative special administrative city':
          result.specialAdministrativeSpecialAdministrativeCity.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(CountrySubDivision)
                  ])) as BuiltList<Object>);
          break;
        case 'districts under republic administration':
          result.districtsUnderRepublicAdministration.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(CountrySubDivision)
                  ])) as BuiltList<Object>);
          break;
        case 'ward':
          result.ward.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'town council':
          result.townCouncil.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'island council':
          result.islandCouncil.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'groups of islands':
          result.groupsOfIslands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
        case 'outlying area':
          result.outlyingArea.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountrySubDivision)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

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

class _$SubDivisionData extends SubDivisionData {
  @override
  final String country;
  @override
  final BuiltList<CountrySubDivision> parish;
  @override
  final BuiltList<CountrySubDivision> emirate;
  @override
  final BuiltList<CountrySubDivision> province;
  @override
  final BuiltList<CountrySubDivision> dependency;
  @override
  final BuiltList<CountrySubDivision> state;
  @override
  final BuiltList<CountrySubDivision> county;
  @override
  final BuiltList<CountrySubDivision> region;
  @override
  final BuiltList<CountrySubDivision> city;
  @override
  final BuiltList<CountrySubDivision> territory;
  @override
  final BuiltList<CountrySubDivision> rayon;
  @override
  final BuiltList<CountrySubDivision> municipality;
  @override
  final BuiltList<CountrySubDivision> autonomousRepublic;
  @override
  final BuiltList<CountrySubDivision> entity;
  @override
  final BuiltList<CountrySubDivision> districtWithSpecialStatus;
  @override
  final BuiltList<CountrySubDivision> district;
  @override
  final BuiltList<CountrySubDivision> governorat;
  @override
  final BuiltList<CountrySubDivision> department;
  @override
  final BuiltList<CountrySubDivision> specialMunicipality;
  @override
  final BuiltList<CountrySubDivision> federalDistrict;
  @override
  final BuiltList<CountrySubDivision> town;
  @override
  final BuiltList<CountrySubDivision> oblast;
  @override
  final BuiltList<CountrySubDivision> prefecture;
  @override
  final BuiltList<CountrySubDivision> commune;
  @override
  final BuiltList<CountrySubDivision> economicPrefecture;
  @override
  final BuiltList<CountrySubDivision> canton;
  @override
  final BuiltList<CountrySubDivision> autonomousDistrict;
  @override
  final BuiltList<CountrySubDivision> autonomousRegion;
  @override
  final BuiltList<CountrySubDivision> specialAdministrativeRegion;
  @override
  final BuiltList<CountrySubDivision> capitalDistrict;
  @override
  final BuiltList<CountrySubDivision> lander;
  @override
  final BuiltList<CountrySubDivision> governorate;
  @override
  final BuiltList<CountrySubDivision> autonomousCityInNorthAfrica;
  @override
  final BuiltList<CountrySubDivision> administration;
  @override
  final BuiltList<CountrySubDivision> metropolitanDepartment;
  @override
  final BuiltList<CountrySubDivision> councilArea;
  @override
  final BuiltList<CountrySubDivision> unitaryAuthority;
  @override
  final BuiltList<CountrySubDivision> districtCouncilArea;
  @override
  final BuiltList<CountrySubDivision> londonBorough;
  @override
  final BuiltList<CountrySubDivision> cityCorporation;
  @override
  final BuiltList<CountrySubDivision> division;
  @override
  final BuiltList<CountrySubDivision> administrativeRegion;
  @override
  final BuiltList<CountrySubDivision> autonomousSector;
  @override
  final BuiltList<CountrySubDivision> cityOfCountyRight;
  @override
  final BuiltList<CountrySubDivision> capitalCity;
  @override
  final BuiltList<CountrySubDivision> autononousProvince;
  @override
  final BuiltList<CountrySubDivision> specialDistrict;
  @override
  final BuiltList<CountrySubDivision> specialRegion;
  @override
  final BuiltList<CountrySubDivision> unionTerritory;
  @override
  final BuiltList<CountrySubDivision> partish;
  @override
  final BuiltList<CountrySubDivision> autonomousMunicipality;
  @override
  final BuiltList<CountrySubDivision> groupOfIslands;
  @override
  final BuiltList<CountrySubDivision> island;
  @override
  final BuiltList<CountrySubDivision> specialCity;
  @override
  final BuiltList<CountrySubDivision> metropolitanCity;
  @override
  final BuiltList<CountrySubDivision> specialSelfGoverningProvince;
  @override
  final BuiltList<CountrySubDivision> specialSelfGoverningCity;
  @override
  final BuiltList<CountrySubDivision> districtMunicipality;
  @override
  final BuiltList<CountrySubDivision> cityMunicipality;
  @override
  final BuiltList<CountrySubDivision> republicanCity;
  @override
  final BuiltList<CountrySubDivision> popularate;
  @override
  final BuiltList<CountrySubDivision> economicRegion;
  @override
  final BuiltList<CountrySubDivision> quarter;
  @override
  final BuiltList<CountrySubDivision> autonomousTerritoryUnit;
  @override
  final BuiltList<CountrySubDivision> territorialUnit;
  @override
  final BuiltList<CountrySubDivision> chainsOfIslands;
  @override
  final BuiltList<CountrySubDivision> localCouncil;
  @override
  final BuiltList<CountrySubDivision> administrativeAtoll;
  @override
  final BuiltList<CountrySubDivision> capital;
  @override
  final BuiltList<CountrySubDivision> federalTerritory;
  @override
  final BuiltList<CountrySubDivision> urbanCommunity;
  @override
  final BuiltList<CountrySubDivision> capitalTerritory;
  @override
  final BuiltList<CountrySubDivision> arcticRegion;
  @override
  final BuiltList<CountrySubDivision> zone;
  @override
  final BuiltList<CountrySubDivision> specialIslandAuthorithy;
  @override
  final BuiltList<CountrySubDivision> indigenousRegion;
  @override
  final BuiltList<CountrySubDivision> pakistanAdministreredArea;
  @override
  final BuiltList<CountrySubDivision> federalCapitalTerritory;
  @override
  final BuiltList<CountrySubDivision> departments;
  @override
  final BuiltList<CountrySubDivision> autonomousProvince;
  @override
  final BuiltList<CountrySubDivision> republic;
  @override
  final BuiltList<CountrySubDivision> administrativeTerritory;
  @override
  final BuiltList<CountrySubDivision> autonomousCity;
  @override
  final BuiltList<CountrySubDivision> geographicalEntity;
  @override
  final BuiltList<CountrySubDivision> area;
  @override
  final BuiltList<CountrySubDivision> metropolitanAdministration;
  @override
  final BuiltList<CountrySubDivision>
      specialAdministrativeSpecialAdministrativeCity;
  @override
  final BuiltList<CountrySubDivision> districtsUnderRepublicAdministration;
  @override
  final BuiltList<CountrySubDivision> ward;
  @override
  final BuiltList<CountrySubDivision> townCouncil;
  @override
  final BuiltList<CountrySubDivision> islandCouncil;
  @override
  final BuiltList<CountrySubDivision> groupsOfIslands;
  @override
  final BuiltList<CountrySubDivision> outlyingArea;

  factory _$SubDivisionData([void Function(SubDivisionDataBuilder) updates]) =>
      (new SubDivisionDataBuilder()..update(updates)).build();

  _$SubDivisionData._(
      {this.country,
      this.parish,
      this.emirate,
      this.province,
      this.dependency,
      this.state,
      this.county,
      this.region,
      this.city,
      this.territory,
      this.rayon,
      this.municipality,
      this.autonomousRepublic,
      this.entity,
      this.districtWithSpecialStatus,
      this.district,
      this.governorat,
      this.department,
      this.specialMunicipality,
      this.federalDistrict,
      this.town,
      this.oblast,
      this.prefecture,
      this.commune,
      this.economicPrefecture,
      this.canton,
      this.autonomousDistrict,
      this.autonomousRegion,
      this.specialAdministrativeRegion,
      this.capitalDistrict,
      this.lander,
      this.governorate,
      this.autonomousCityInNorthAfrica,
      this.administration,
      this.metropolitanDepartment,
      this.councilArea,
      this.unitaryAuthority,
      this.districtCouncilArea,
      this.londonBorough,
      this.cityCorporation,
      this.division,
      this.administrativeRegion,
      this.autonomousSector,
      this.cityOfCountyRight,
      this.capitalCity,
      this.autononousProvince,
      this.specialDistrict,
      this.specialRegion,
      this.unionTerritory,
      this.partish,
      this.autonomousMunicipality,
      this.groupOfIslands,
      this.island,
      this.specialCity,
      this.metropolitanCity,
      this.specialSelfGoverningProvince,
      this.specialSelfGoverningCity,
      this.districtMunicipality,
      this.cityMunicipality,
      this.republicanCity,
      this.popularate,
      this.economicRegion,
      this.quarter,
      this.autonomousTerritoryUnit,
      this.territorialUnit,
      this.chainsOfIslands,
      this.localCouncil,
      this.administrativeAtoll,
      this.capital,
      this.federalTerritory,
      this.urbanCommunity,
      this.capitalTerritory,
      this.arcticRegion,
      this.zone,
      this.specialIslandAuthorithy,
      this.indigenousRegion,
      this.pakistanAdministreredArea,
      this.federalCapitalTerritory,
      this.departments,
      this.autonomousProvince,
      this.republic,
      this.administrativeTerritory,
      this.autonomousCity,
      this.geographicalEntity,
      this.area,
      this.metropolitanAdministration,
      this.specialAdministrativeSpecialAdministrativeCity,
      this.districtsUnderRepublicAdministration,
      this.ward,
      this.townCouncil,
      this.islandCouncil,
      this.groupsOfIslands,
      this.outlyingArea})
      : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('SubDivisionData', 'country');
    }
  }

  @override
  SubDivisionData rebuild(void Function(SubDivisionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubDivisionDataBuilder toBuilder() =>
      new SubDivisionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubDivisionData &&
        country == other.country &&
        parish == other.parish &&
        emirate == other.emirate &&
        province == other.province &&
        dependency == other.dependency &&
        state == other.state &&
        county == other.county &&
        region == other.region &&
        city == other.city &&
        territory == other.territory &&
        rayon == other.rayon &&
        municipality == other.municipality &&
        autonomousRepublic == other.autonomousRepublic &&
        entity == other.entity &&
        districtWithSpecialStatus == other.districtWithSpecialStatus &&
        district == other.district &&
        governorat == other.governorat &&
        department == other.department &&
        specialMunicipality == other.specialMunicipality &&
        federalDistrict == other.federalDistrict &&
        town == other.town &&
        oblast == other.oblast &&
        prefecture == other.prefecture &&
        commune == other.commune &&
        economicPrefecture == other.economicPrefecture &&
        canton == other.canton &&
        autonomousDistrict == other.autonomousDistrict &&
        autonomousRegion == other.autonomousRegion &&
        specialAdministrativeRegion == other.specialAdministrativeRegion &&
        capitalDistrict == other.capitalDistrict &&
        lander == other.lander &&
        governorate == other.governorate &&
        autonomousCityInNorthAfrica == other.autonomousCityInNorthAfrica &&
        administration == other.administration &&
        metropolitanDepartment == other.metropolitanDepartment &&
        councilArea == other.councilArea &&
        unitaryAuthority == other.unitaryAuthority &&
        districtCouncilArea == other.districtCouncilArea &&
        londonBorough == other.londonBorough &&
        cityCorporation == other.cityCorporation &&
        division == other.division &&
        administrativeRegion == other.administrativeRegion &&
        autonomousSector == other.autonomousSector &&
        cityOfCountyRight == other.cityOfCountyRight &&
        capitalCity == other.capitalCity &&
        autononousProvince == other.autononousProvince &&
        specialDistrict == other.specialDistrict &&
        specialRegion == other.specialRegion &&
        unionTerritory == other.unionTerritory &&
        partish == other.partish &&
        autonomousMunicipality == other.autonomousMunicipality &&
        groupOfIslands == other.groupOfIslands &&
        island == other.island &&
        specialCity == other.specialCity &&
        metropolitanCity == other.metropolitanCity &&
        specialSelfGoverningProvince == other.specialSelfGoverningProvince &&
        specialSelfGoverningCity == other.specialSelfGoverningCity &&
        districtMunicipality == other.districtMunicipality &&
        cityMunicipality == other.cityMunicipality &&
        republicanCity == other.republicanCity &&
        popularate == other.popularate &&
        economicRegion == other.economicRegion &&
        quarter == other.quarter &&
        autonomousTerritoryUnit == other.autonomousTerritoryUnit &&
        territorialUnit == other.territorialUnit &&
        chainsOfIslands == other.chainsOfIslands &&
        localCouncil == other.localCouncil &&
        administrativeAtoll == other.administrativeAtoll &&
        capital == other.capital &&
        federalTerritory == other.federalTerritory &&
        urbanCommunity == other.urbanCommunity &&
        capitalTerritory == other.capitalTerritory &&
        arcticRegion == other.arcticRegion &&
        zone == other.zone &&
        specialIslandAuthorithy == other.specialIslandAuthorithy &&
        indigenousRegion == other.indigenousRegion &&
        pakistanAdministreredArea == other.pakistanAdministreredArea &&
        federalCapitalTerritory == other.federalCapitalTerritory &&
        departments == other.departments &&
        autonomousProvince == other.autonomousProvince &&
        republic == other.republic &&
        administrativeTerritory == other.administrativeTerritory &&
        autonomousCity == other.autonomousCity &&
        geographicalEntity == other.geographicalEntity &&
        area == other.area &&
        metropolitanAdministration == other.metropolitanAdministration &&
        specialAdministrativeSpecialAdministrativeCity ==
            other.specialAdministrativeSpecialAdministrativeCity &&
        districtsUnderRepublicAdministration ==
            other.districtsUnderRepublicAdministration &&
        ward == other.ward &&
        townCouncil == other.townCouncil &&
        islandCouncil == other.islandCouncil &&
        groupsOfIslands == other.groupsOfIslands &&
        outlyingArea == other.outlyingArea;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, country.hashCode), parish.hashCode), emirate.hashCode), province.hashCode), dependency.hashCode), state.hashCode), county.hashCode), region.hashCode), city.hashCode), territory.hashCode), rayon.hashCode), municipality.hashCode), autonomousRepublic.hashCode), entity.hashCode), districtWithSpecialStatus.hashCode), district.hashCode), governorat.hashCode), department.hashCode), specialMunicipality.hashCode), federalDistrict.hashCode), town.hashCode), oblast.hashCode), prefecture.hashCode), commune.hashCode), economicPrefecture.hashCode), canton.hashCode), autonomousDistrict.hashCode), autonomousRegion.hashCode), specialAdministrativeRegion.hashCode), capitalDistrict.hashCode), lander.hashCode), governorate.hashCode), autonomousCityInNorthAfrica.hashCode), administration.hashCode), metropolitanDepartment.hashCode), councilArea.hashCode), unitaryAuthority.hashCode), districtCouncilArea.hashCode), londonBorough.hashCode), cityCorporation.hashCode), division.hashCode), administrativeRegion.hashCode), autonomousSector.hashCode), cityOfCountyRight.hashCode), capitalCity.hashCode), autononousProvince.hashCode), specialDistrict.hashCode), specialRegion.hashCode), unionTerritory.hashCode), partish.hashCode), autonomousMunicipality.hashCode), groupOfIslands.hashCode), island.hashCode), specialCity.hashCode), metropolitanCity.hashCode), specialSelfGoverningProvince.hashCode), specialSelfGoverningCity.hashCode), districtMunicipality.hashCode), cityMunicipality.hashCode), republicanCity.hashCode), popularate.hashCode), economicRegion.hashCode), quarter.hashCode), autonomousTerritoryUnit.hashCode), territorialUnit.hashCode), chainsOfIslands.hashCode), localCouncil.hashCode), administrativeAtoll.hashCode), capital.hashCode), federalTerritory.hashCode), urbanCommunity.hashCode), capitalTerritory.hashCode), arcticRegion.hashCode), zone.hashCode),
                                                                                specialIslandAuthorithy.hashCode),
                                                                            indigenousRegion.hashCode),
                                                                        pakistanAdministreredArea.hashCode),
                                                                    federalCapitalTerritory.hashCode),
                                                                departments.hashCode),
                                                            autonomousProvince.hashCode),
                                                        republic.hashCode),
                                                    administrativeTerritory.hashCode),
                                                autonomousCity.hashCode),
                                            geographicalEntity.hashCode),
                                        area.hashCode),
                                    metropolitanAdministration.hashCode),
                                specialAdministrativeSpecialAdministrativeCity.hashCode),
                            districtsUnderRepublicAdministration.hashCode),
                        ward.hashCode),
                    townCouncil.hashCode),
                islandCouncil.hashCode),
            groupsOfIslands.hashCode),
        outlyingArea.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubDivisionData')
          ..add('country', country)
          ..add('parish', parish)
          ..add('emirate', emirate)
          ..add('province', province)
          ..add('dependency', dependency)
          ..add('state', state)
          ..add('county', county)
          ..add('region', region)
          ..add('city', city)
          ..add('territory', territory)
          ..add('rayon', rayon)
          ..add('municipality', municipality)
          ..add('autonomousRepublic', autonomousRepublic)
          ..add('entity', entity)
          ..add('districtWithSpecialStatus', districtWithSpecialStatus)
          ..add('district', district)
          ..add('governorat', governorat)
          ..add('department', department)
          ..add('specialMunicipality', specialMunicipality)
          ..add('federalDistrict', federalDistrict)
          ..add('town', town)
          ..add('oblast', oblast)
          ..add('prefecture', prefecture)
          ..add('commune', commune)
          ..add('economicPrefecture', economicPrefecture)
          ..add('canton', canton)
          ..add('autonomousDistrict', autonomousDistrict)
          ..add('autonomousRegion', autonomousRegion)
          ..add('specialAdministrativeRegion', specialAdministrativeRegion)
          ..add('capitalDistrict', capitalDistrict)
          ..add('lander', lander)
          ..add('governorate', governorate)
          ..add('autonomousCityInNorthAfrica', autonomousCityInNorthAfrica)
          ..add('administration', administration)
          ..add('metropolitanDepartment', metropolitanDepartment)
          ..add('councilArea', councilArea)
          ..add('unitaryAuthority', unitaryAuthority)
          ..add('districtCouncilArea', districtCouncilArea)
          ..add('londonBorough', londonBorough)
          ..add('cityCorporation', cityCorporation)
          ..add('division', division)
          ..add('administrativeRegion', administrativeRegion)
          ..add('autonomousSector', autonomousSector)
          ..add('cityOfCountyRight', cityOfCountyRight)
          ..add('capitalCity', capitalCity)
          ..add('autononousProvince', autononousProvince)
          ..add('specialDistrict', specialDistrict)
          ..add('specialRegion', specialRegion)
          ..add('unionTerritory', unionTerritory)
          ..add('partish', partish)
          ..add('autonomousMunicipality', autonomousMunicipality)
          ..add('groupOfIslands', groupOfIslands)
          ..add('island', island)
          ..add('specialCity', specialCity)
          ..add('metropolitanCity', metropolitanCity)
          ..add('specialSelfGoverningProvince', specialSelfGoverningProvince)
          ..add('specialSelfGoverningCity', specialSelfGoverningCity)
          ..add('districtMunicipality', districtMunicipality)
          ..add('cityMunicipality', cityMunicipality)
          ..add('republicanCity', republicanCity)
          ..add('popularate', popularate)
          ..add('economicRegion', economicRegion)
          ..add('quarter', quarter)
          ..add('autonomousTerritoryUnit', autonomousTerritoryUnit)
          ..add('territorialUnit', territorialUnit)
          ..add('chainsOfIslands', chainsOfIslands)
          ..add('localCouncil', localCouncil)
          ..add('administrativeAtoll', administrativeAtoll)
          ..add('capital', capital)
          ..add('federalTerritory', federalTerritory)
          ..add('urbanCommunity', urbanCommunity)
          ..add('capitalTerritory', capitalTerritory)
          ..add('arcticRegion', arcticRegion)
          ..add('zone', zone)
          ..add('specialIslandAuthorithy', specialIslandAuthorithy)
          ..add('indigenousRegion', indigenousRegion)
          ..add('pakistanAdministreredArea', pakistanAdministreredArea)
          ..add('federalCapitalTerritory', federalCapitalTerritory)
          ..add('departments', departments)
          ..add('autonomousProvince', autonomousProvince)
          ..add('republic', republic)
          ..add('administrativeTerritory', administrativeTerritory)
          ..add('autonomousCity', autonomousCity)
          ..add('geographicalEntity', geographicalEntity)
          ..add('area', area)
          ..add('metropolitanAdministration', metropolitanAdministration)
          ..add('specialAdministrativeSpecialAdministrativeCity',
              specialAdministrativeSpecialAdministrativeCity)
          ..add('districtsUnderRepublicAdministration',
              districtsUnderRepublicAdministration)
          ..add('ward', ward)
          ..add('townCouncil', townCouncil)
          ..add('islandCouncil', islandCouncil)
          ..add('groupsOfIslands', groupsOfIslands)
          ..add('outlyingArea', outlyingArea))
        .toString();
  }
}

class SubDivisionDataBuilder
    implements Builder<SubDivisionData, SubDivisionDataBuilder> {
  _$SubDivisionData _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  ListBuilder<CountrySubDivision> _parish;
  ListBuilder<CountrySubDivision> get parish =>
      _$this._parish ??= new ListBuilder<CountrySubDivision>();
  set parish(ListBuilder<CountrySubDivision> parish) => _$this._parish = parish;

  ListBuilder<CountrySubDivision> _emirate;
  ListBuilder<CountrySubDivision> get emirate =>
      _$this._emirate ??= new ListBuilder<CountrySubDivision>();
  set emirate(ListBuilder<CountrySubDivision> emirate) =>
      _$this._emirate = emirate;

  ListBuilder<CountrySubDivision> _province;
  ListBuilder<CountrySubDivision> get province =>
      _$this._province ??= new ListBuilder<CountrySubDivision>();
  set province(ListBuilder<CountrySubDivision> province) =>
      _$this._province = province;

  ListBuilder<CountrySubDivision> _dependency;
  ListBuilder<CountrySubDivision> get dependency =>
      _$this._dependency ??= new ListBuilder<CountrySubDivision>();
  set dependency(ListBuilder<CountrySubDivision> dependency) =>
      _$this._dependency = dependency;

  ListBuilder<CountrySubDivision> _state;
  ListBuilder<CountrySubDivision> get state =>
      _$this._state ??= new ListBuilder<CountrySubDivision>();
  set state(ListBuilder<CountrySubDivision> state) => _$this._state = state;

  ListBuilder<CountrySubDivision> _county;
  ListBuilder<CountrySubDivision> get county =>
      _$this._county ??= new ListBuilder<CountrySubDivision>();
  set county(ListBuilder<CountrySubDivision> county) => _$this._county = county;

  ListBuilder<CountrySubDivision> _region;
  ListBuilder<CountrySubDivision> get region =>
      _$this._region ??= new ListBuilder<CountrySubDivision>();
  set region(ListBuilder<CountrySubDivision> region) => _$this._region = region;

  ListBuilder<CountrySubDivision> _city;
  ListBuilder<CountrySubDivision> get city =>
      _$this._city ??= new ListBuilder<CountrySubDivision>();
  set city(ListBuilder<CountrySubDivision> city) => _$this._city = city;

  ListBuilder<CountrySubDivision> _territory;
  ListBuilder<CountrySubDivision> get territory =>
      _$this._territory ??= new ListBuilder<CountrySubDivision>();
  set territory(ListBuilder<CountrySubDivision> territory) =>
      _$this._territory = territory;

  ListBuilder<CountrySubDivision> _rayon;
  ListBuilder<CountrySubDivision> get rayon =>
      _$this._rayon ??= new ListBuilder<CountrySubDivision>();
  set rayon(ListBuilder<CountrySubDivision> rayon) => _$this._rayon = rayon;

  ListBuilder<CountrySubDivision> _municipality;
  ListBuilder<CountrySubDivision> get municipality =>
      _$this._municipality ??= new ListBuilder<CountrySubDivision>();
  set municipality(ListBuilder<CountrySubDivision> municipality) =>
      _$this._municipality = municipality;

  ListBuilder<CountrySubDivision> _autonomousRepublic;
  ListBuilder<CountrySubDivision> get autonomousRepublic =>
      _$this._autonomousRepublic ??= new ListBuilder<CountrySubDivision>();
  set autonomousRepublic(ListBuilder<CountrySubDivision> autonomousRepublic) =>
      _$this._autonomousRepublic = autonomousRepublic;

  ListBuilder<CountrySubDivision> _entity;
  ListBuilder<CountrySubDivision> get entity =>
      _$this._entity ??= new ListBuilder<CountrySubDivision>();
  set entity(ListBuilder<CountrySubDivision> entity) => _$this._entity = entity;

  ListBuilder<CountrySubDivision> _districtWithSpecialStatus;
  ListBuilder<CountrySubDivision> get districtWithSpecialStatus =>
      _$this._districtWithSpecialStatus ??=
          new ListBuilder<CountrySubDivision>();
  set districtWithSpecialStatus(
          ListBuilder<CountrySubDivision> districtWithSpecialStatus) =>
      _$this._districtWithSpecialStatus = districtWithSpecialStatus;

  ListBuilder<CountrySubDivision> _district;
  ListBuilder<CountrySubDivision> get district =>
      _$this._district ??= new ListBuilder<CountrySubDivision>();
  set district(ListBuilder<CountrySubDivision> district) =>
      _$this._district = district;

  ListBuilder<CountrySubDivision> _governorat;
  ListBuilder<CountrySubDivision> get governorat =>
      _$this._governorat ??= new ListBuilder<CountrySubDivision>();
  set governorat(ListBuilder<CountrySubDivision> governorat) =>
      _$this._governorat = governorat;

  ListBuilder<CountrySubDivision> _department;
  ListBuilder<CountrySubDivision> get department =>
      _$this._department ??= new ListBuilder<CountrySubDivision>();
  set department(ListBuilder<CountrySubDivision> department) =>
      _$this._department = department;

  ListBuilder<CountrySubDivision> _specialMunicipality;
  ListBuilder<CountrySubDivision> get specialMunicipality =>
      _$this._specialMunicipality ??= new ListBuilder<CountrySubDivision>();
  set specialMunicipality(
          ListBuilder<CountrySubDivision> specialMunicipality) =>
      _$this._specialMunicipality = specialMunicipality;

  ListBuilder<CountrySubDivision> _federalDistrict;
  ListBuilder<CountrySubDivision> get federalDistrict =>
      _$this._federalDistrict ??= new ListBuilder<CountrySubDivision>();
  set federalDistrict(ListBuilder<CountrySubDivision> federalDistrict) =>
      _$this._federalDistrict = federalDistrict;

  ListBuilder<CountrySubDivision> _town;
  ListBuilder<CountrySubDivision> get town =>
      _$this._town ??= new ListBuilder<CountrySubDivision>();
  set town(ListBuilder<CountrySubDivision> town) => _$this._town = town;

  ListBuilder<CountrySubDivision> _oblast;
  ListBuilder<CountrySubDivision> get oblast =>
      _$this._oblast ??= new ListBuilder<CountrySubDivision>();
  set oblast(ListBuilder<CountrySubDivision> oblast) => _$this._oblast = oblast;

  ListBuilder<CountrySubDivision> _prefecture;
  ListBuilder<CountrySubDivision> get prefecture =>
      _$this._prefecture ??= new ListBuilder<CountrySubDivision>();
  set prefecture(ListBuilder<CountrySubDivision> prefecture) =>
      _$this._prefecture = prefecture;

  ListBuilder<CountrySubDivision> _commune;
  ListBuilder<CountrySubDivision> get commune =>
      _$this._commune ??= new ListBuilder<CountrySubDivision>();
  set commune(ListBuilder<CountrySubDivision> commune) =>
      _$this._commune = commune;

  ListBuilder<CountrySubDivision> _economicPrefecture;
  ListBuilder<CountrySubDivision> get economicPrefecture =>
      _$this._economicPrefecture ??= new ListBuilder<CountrySubDivision>();
  set economicPrefecture(ListBuilder<CountrySubDivision> economicPrefecture) =>
      _$this._economicPrefecture = economicPrefecture;

  ListBuilder<CountrySubDivision> _canton;
  ListBuilder<CountrySubDivision> get canton =>
      _$this._canton ??= new ListBuilder<CountrySubDivision>();
  set canton(ListBuilder<CountrySubDivision> canton) => _$this._canton = canton;

  ListBuilder<CountrySubDivision> _autonomousDistrict;
  ListBuilder<CountrySubDivision> get autonomousDistrict =>
      _$this._autonomousDistrict ??= new ListBuilder<CountrySubDivision>();
  set autonomousDistrict(ListBuilder<CountrySubDivision> autonomousDistrict) =>
      _$this._autonomousDistrict = autonomousDistrict;

  ListBuilder<CountrySubDivision> _autonomousRegion;
  ListBuilder<CountrySubDivision> get autonomousRegion =>
      _$this._autonomousRegion ??= new ListBuilder<CountrySubDivision>();
  set autonomousRegion(ListBuilder<CountrySubDivision> autonomousRegion) =>
      _$this._autonomousRegion = autonomousRegion;

  ListBuilder<CountrySubDivision> _specialAdministrativeRegion;
  ListBuilder<CountrySubDivision> get specialAdministrativeRegion =>
      _$this._specialAdministrativeRegion ??=
          new ListBuilder<CountrySubDivision>();
  set specialAdministrativeRegion(
          ListBuilder<CountrySubDivision> specialAdministrativeRegion) =>
      _$this._specialAdministrativeRegion = specialAdministrativeRegion;

  ListBuilder<CountrySubDivision> _capitalDistrict;
  ListBuilder<CountrySubDivision> get capitalDistrict =>
      _$this._capitalDistrict ??= new ListBuilder<CountrySubDivision>();
  set capitalDistrict(ListBuilder<CountrySubDivision> capitalDistrict) =>
      _$this._capitalDistrict = capitalDistrict;

  ListBuilder<CountrySubDivision> _lander;
  ListBuilder<CountrySubDivision> get lander =>
      _$this._lander ??= new ListBuilder<CountrySubDivision>();
  set lander(ListBuilder<CountrySubDivision> lander) => _$this._lander = lander;

  ListBuilder<CountrySubDivision> _governorate;
  ListBuilder<CountrySubDivision> get governorate =>
      _$this._governorate ??= new ListBuilder<CountrySubDivision>();
  set governorate(ListBuilder<CountrySubDivision> governorate) =>
      _$this._governorate = governorate;

  ListBuilder<CountrySubDivision> _autonomousCityInNorthAfrica;
  ListBuilder<CountrySubDivision> get autonomousCityInNorthAfrica =>
      _$this._autonomousCityInNorthAfrica ??=
          new ListBuilder<CountrySubDivision>();
  set autonomousCityInNorthAfrica(
          ListBuilder<CountrySubDivision> autonomousCityInNorthAfrica) =>
      _$this._autonomousCityInNorthAfrica = autonomousCityInNorthAfrica;

  ListBuilder<CountrySubDivision> _administration;
  ListBuilder<CountrySubDivision> get administration =>
      _$this._administration ??= new ListBuilder<CountrySubDivision>();
  set administration(ListBuilder<CountrySubDivision> administration) =>
      _$this._administration = administration;

  ListBuilder<CountrySubDivision> _metropolitanDepartment;
  ListBuilder<CountrySubDivision> get metropolitanDepartment =>
      _$this._metropolitanDepartment ??= new ListBuilder<CountrySubDivision>();
  set metropolitanDepartment(
          ListBuilder<CountrySubDivision> metropolitanDepartment) =>
      _$this._metropolitanDepartment = metropolitanDepartment;

  ListBuilder<CountrySubDivision> _councilArea;
  ListBuilder<CountrySubDivision> get councilArea =>
      _$this._councilArea ??= new ListBuilder<CountrySubDivision>();
  set councilArea(ListBuilder<CountrySubDivision> councilArea) =>
      _$this._councilArea = councilArea;

  ListBuilder<CountrySubDivision> _unitaryAuthority;
  ListBuilder<CountrySubDivision> get unitaryAuthority =>
      _$this._unitaryAuthority ??= new ListBuilder<CountrySubDivision>();
  set unitaryAuthority(ListBuilder<CountrySubDivision> unitaryAuthority) =>
      _$this._unitaryAuthority = unitaryAuthority;

  ListBuilder<CountrySubDivision> _districtCouncilArea;
  ListBuilder<CountrySubDivision> get districtCouncilArea =>
      _$this._districtCouncilArea ??= new ListBuilder<CountrySubDivision>();
  set districtCouncilArea(
          ListBuilder<CountrySubDivision> districtCouncilArea) =>
      _$this._districtCouncilArea = districtCouncilArea;

  ListBuilder<CountrySubDivision> _londonBorough;
  ListBuilder<CountrySubDivision> get londonBorough =>
      _$this._londonBorough ??= new ListBuilder<CountrySubDivision>();
  set londonBorough(ListBuilder<CountrySubDivision> londonBorough) =>
      _$this._londonBorough = londonBorough;

  ListBuilder<CountrySubDivision> _cityCorporation;
  ListBuilder<CountrySubDivision> get cityCorporation =>
      _$this._cityCorporation ??= new ListBuilder<CountrySubDivision>();
  set cityCorporation(ListBuilder<CountrySubDivision> cityCorporation) =>
      _$this._cityCorporation = cityCorporation;

  ListBuilder<CountrySubDivision> _division;
  ListBuilder<CountrySubDivision> get division =>
      _$this._division ??= new ListBuilder<CountrySubDivision>();
  set division(ListBuilder<CountrySubDivision> division) =>
      _$this._division = division;

  ListBuilder<CountrySubDivision> _administrativeRegion;
  ListBuilder<CountrySubDivision> get administrativeRegion =>
      _$this._administrativeRegion ??= new ListBuilder<CountrySubDivision>();
  set administrativeRegion(
          ListBuilder<CountrySubDivision> administrativeRegion) =>
      _$this._administrativeRegion = administrativeRegion;

  ListBuilder<CountrySubDivision> _autonomousSector;
  ListBuilder<CountrySubDivision> get autonomousSector =>
      _$this._autonomousSector ??= new ListBuilder<CountrySubDivision>();
  set autonomousSector(ListBuilder<CountrySubDivision> autonomousSector) =>
      _$this._autonomousSector = autonomousSector;

  ListBuilder<CountrySubDivision> _cityOfCountyRight;
  ListBuilder<CountrySubDivision> get cityOfCountyRight =>
      _$this._cityOfCountyRight ??= new ListBuilder<CountrySubDivision>();
  set cityOfCountyRight(ListBuilder<CountrySubDivision> cityOfCountyRight) =>
      _$this._cityOfCountyRight = cityOfCountyRight;

  ListBuilder<CountrySubDivision> _capitalCity;
  ListBuilder<CountrySubDivision> get capitalCity =>
      _$this._capitalCity ??= new ListBuilder<CountrySubDivision>();
  set capitalCity(ListBuilder<CountrySubDivision> capitalCity) =>
      _$this._capitalCity = capitalCity;

  ListBuilder<CountrySubDivision> _autononousProvince;
  ListBuilder<CountrySubDivision> get autononousProvince =>
      _$this._autononousProvince ??= new ListBuilder<CountrySubDivision>();
  set autononousProvince(ListBuilder<CountrySubDivision> autononousProvince) =>
      _$this._autononousProvince = autononousProvince;

  ListBuilder<CountrySubDivision> _specialDistrict;
  ListBuilder<CountrySubDivision> get specialDistrict =>
      _$this._specialDistrict ??= new ListBuilder<CountrySubDivision>();
  set specialDistrict(ListBuilder<CountrySubDivision> specialDistrict) =>
      _$this._specialDistrict = specialDistrict;

  ListBuilder<CountrySubDivision> _specialRegion;
  ListBuilder<CountrySubDivision> get specialRegion =>
      _$this._specialRegion ??= new ListBuilder<CountrySubDivision>();
  set specialRegion(ListBuilder<CountrySubDivision> specialRegion) =>
      _$this._specialRegion = specialRegion;

  ListBuilder<CountrySubDivision> _unionTerritory;
  ListBuilder<CountrySubDivision> get unionTerritory =>
      _$this._unionTerritory ??= new ListBuilder<CountrySubDivision>();
  set unionTerritory(ListBuilder<CountrySubDivision> unionTerritory) =>
      _$this._unionTerritory = unionTerritory;

  ListBuilder<CountrySubDivision> _partish;
  ListBuilder<CountrySubDivision> get partish =>
      _$this._partish ??= new ListBuilder<CountrySubDivision>();
  set partish(ListBuilder<CountrySubDivision> partish) =>
      _$this._partish = partish;

  ListBuilder<CountrySubDivision> _autonomousMunicipality;
  ListBuilder<CountrySubDivision> get autonomousMunicipality =>
      _$this._autonomousMunicipality ??= new ListBuilder<CountrySubDivision>();
  set autonomousMunicipality(
          ListBuilder<CountrySubDivision> autonomousMunicipality) =>
      _$this._autonomousMunicipality = autonomousMunicipality;

  ListBuilder<CountrySubDivision> _groupOfIslands;
  ListBuilder<CountrySubDivision> get groupOfIslands =>
      _$this._groupOfIslands ??= new ListBuilder<CountrySubDivision>();
  set groupOfIslands(ListBuilder<CountrySubDivision> groupOfIslands) =>
      _$this._groupOfIslands = groupOfIslands;

  ListBuilder<CountrySubDivision> _island;
  ListBuilder<CountrySubDivision> get island =>
      _$this._island ??= new ListBuilder<CountrySubDivision>();
  set island(ListBuilder<CountrySubDivision> island) => _$this._island = island;

  ListBuilder<CountrySubDivision> _specialCity;
  ListBuilder<CountrySubDivision> get specialCity =>
      _$this._specialCity ??= new ListBuilder<CountrySubDivision>();
  set specialCity(ListBuilder<CountrySubDivision> specialCity) =>
      _$this._specialCity = specialCity;

  ListBuilder<CountrySubDivision> _metropolitanCity;
  ListBuilder<CountrySubDivision> get metropolitanCity =>
      _$this._metropolitanCity ??= new ListBuilder<CountrySubDivision>();
  set metropolitanCity(ListBuilder<CountrySubDivision> metropolitanCity) =>
      _$this._metropolitanCity = metropolitanCity;

  ListBuilder<CountrySubDivision> _specialSelfGoverningProvince;
  ListBuilder<CountrySubDivision> get specialSelfGoverningProvince =>
      _$this._specialSelfGoverningProvince ??=
          new ListBuilder<CountrySubDivision>();
  set specialSelfGoverningProvince(
          ListBuilder<CountrySubDivision> specialSelfGoverningProvince) =>
      _$this._specialSelfGoverningProvince = specialSelfGoverningProvince;

  ListBuilder<CountrySubDivision> _specialSelfGoverningCity;
  ListBuilder<CountrySubDivision> get specialSelfGoverningCity =>
      _$this._specialSelfGoverningCity ??=
          new ListBuilder<CountrySubDivision>();
  set specialSelfGoverningCity(
          ListBuilder<CountrySubDivision> specialSelfGoverningCity) =>
      _$this._specialSelfGoverningCity = specialSelfGoverningCity;

  ListBuilder<CountrySubDivision> _districtMunicipality;
  ListBuilder<CountrySubDivision> get districtMunicipality =>
      _$this._districtMunicipality ??= new ListBuilder<CountrySubDivision>();
  set districtMunicipality(
          ListBuilder<CountrySubDivision> districtMunicipality) =>
      _$this._districtMunicipality = districtMunicipality;

  ListBuilder<CountrySubDivision> _cityMunicipality;
  ListBuilder<CountrySubDivision> get cityMunicipality =>
      _$this._cityMunicipality ??= new ListBuilder<CountrySubDivision>();
  set cityMunicipality(ListBuilder<CountrySubDivision> cityMunicipality) =>
      _$this._cityMunicipality = cityMunicipality;

  ListBuilder<CountrySubDivision> _republicanCity;
  ListBuilder<CountrySubDivision> get republicanCity =>
      _$this._republicanCity ??= new ListBuilder<CountrySubDivision>();
  set republicanCity(ListBuilder<CountrySubDivision> republicanCity) =>
      _$this._republicanCity = republicanCity;

  ListBuilder<CountrySubDivision> _popularate;
  ListBuilder<CountrySubDivision> get popularate =>
      _$this._popularate ??= new ListBuilder<CountrySubDivision>();
  set popularate(ListBuilder<CountrySubDivision> popularate) =>
      _$this._popularate = popularate;

  ListBuilder<CountrySubDivision> _economicRegion;
  ListBuilder<CountrySubDivision> get economicRegion =>
      _$this._economicRegion ??= new ListBuilder<CountrySubDivision>();
  set economicRegion(ListBuilder<CountrySubDivision> economicRegion) =>
      _$this._economicRegion = economicRegion;

  ListBuilder<CountrySubDivision> _quarter;
  ListBuilder<CountrySubDivision> get quarter =>
      _$this._quarter ??= new ListBuilder<CountrySubDivision>();
  set quarter(ListBuilder<CountrySubDivision> quarter) =>
      _$this._quarter = quarter;

  ListBuilder<CountrySubDivision> _autonomousTerritoryUnit;
  ListBuilder<CountrySubDivision> get autonomousTerritoryUnit =>
      _$this._autonomousTerritoryUnit ??= new ListBuilder<CountrySubDivision>();
  set autonomousTerritoryUnit(
          ListBuilder<CountrySubDivision> autonomousTerritoryUnit) =>
      _$this._autonomousTerritoryUnit = autonomousTerritoryUnit;

  ListBuilder<CountrySubDivision> _territorialUnit;
  ListBuilder<CountrySubDivision> get territorialUnit =>
      _$this._territorialUnit ??= new ListBuilder<CountrySubDivision>();
  set territorialUnit(ListBuilder<CountrySubDivision> territorialUnit) =>
      _$this._territorialUnit = territorialUnit;

  ListBuilder<CountrySubDivision> _chainsOfIslands;
  ListBuilder<CountrySubDivision> get chainsOfIslands =>
      _$this._chainsOfIslands ??= new ListBuilder<CountrySubDivision>();
  set chainsOfIslands(ListBuilder<CountrySubDivision> chainsOfIslands) =>
      _$this._chainsOfIslands = chainsOfIslands;

  ListBuilder<CountrySubDivision> _localCouncil;
  ListBuilder<CountrySubDivision> get localCouncil =>
      _$this._localCouncil ??= new ListBuilder<CountrySubDivision>();
  set localCouncil(ListBuilder<CountrySubDivision> localCouncil) =>
      _$this._localCouncil = localCouncil;

  ListBuilder<CountrySubDivision> _administrativeAtoll;
  ListBuilder<CountrySubDivision> get administrativeAtoll =>
      _$this._administrativeAtoll ??= new ListBuilder<CountrySubDivision>();
  set administrativeAtoll(
          ListBuilder<CountrySubDivision> administrativeAtoll) =>
      _$this._administrativeAtoll = administrativeAtoll;

  ListBuilder<CountrySubDivision> _capital;
  ListBuilder<CountrySubDivision> get capital =>
      _$this._capital ??= new ListBuilder<CountrySubDivision>();
  set capital(ListBuilder<CountrySubDivision> capital) =>
      _$this._capital = capital;

  ListBuilder<CountrySubDivision> _federalTerritory;
  ListBuilder<CountrySubDivision> get federalTerritory =>
      _$this._federalTerritory ??= new ListBuilder<CountrySubDivision>();
  set federalTerritory(ListBuilder<CountrySubDivision> federalTerritory) =>
      _$this._federalTerritory = federalTerritory;

  ListBuilder<CountrySubDivision> _urbanCommunity;
  ListBuilder<CountrySubDivision> get urbanCommunity =>
      _$this._urbanCommunity ??= new ListBuilder<CountrySubDivision>();
  set urbanCommunity(ListBuilder<CountrySubDivision> urbanCommunity) =>
      _$this._urbanCommunity = urbanCommunity;

  ListBuilder<CountrySubDivision> _capitalTerritory;
  ListBuilder<CountrySubDivision> get capitalTerritory =>
      _$this._capitalTerritory ??= new ListBuilder<CountrySubDivision>();
  set capitalTerritory(ListBuilder<CountrySubDivision> capitalTerritory) =>
      _$this._capitalTerritory = capitalTerritory;

  ListBuilder<CountrySubDivision> _arcticRegion;
  ListBuilder<CountrySubDivision> get arcticRegion =>
      _$this._arcticRegion ??= new ListBuilder<CountrySubDivision>();
  set arcticRegion(ListBuilder<CountrySubDivision> arcticRegion) =>
      _$this._arcticRegion = arcticRegion;

  ListBuilder<CountrySubDivision> _zone;
  ListBuilder<CountrySubDivision> get zone =>
      _$this._zone ??= new ListBuilder<CountrySubDivision>();
  set zone(ListBuilder<CountrySubDivision> zone) => _$this._zone = zone;

  ListBuilder<CountrySubDivision> _specialIslandAuthorithy;
  ListBuilder<CountrySubDivision> get specialIslandAuthorithy =>
      _$this._specialIslandAuthorithy ??= new ListBuilder<CountrySubDivision>();
  set specialIslandAuthorithy(
          ListBuilder<CountrySubDivision> specialIslandAuthorithy) =>
      _$this._specialIslandAuthorithy = specialIslandAuthorithy;

  ListBuilder<CountrySubDivision> _indigenousRegion;
  ListBuilder<CountrySubDivision> get indigenousRegion =>
      _$this._indigenousRegion ??= new ListBuilder<CountrySubDivision>();
  set indigenousRegion(ListBuilder<CountrySubDivision> indigenousRegion) =>
      _$this._indigenousRegion = indigenousRegion;

  ListBuilder<CountrySubDivision> _pakistanAdministreredArea;
  ListBuilder<CountrySubDivision> get pakistanAdministreredArea =>
      _$this._pakistanAdministreredArea ??=
          new ListBuilder<CountrySubDivision>();
  set pakistanAdministreredArea(
          ListBuilder<CountrySubDivision> pakistanAdministreredArea) =>
      _$this._pakistanAdministreredArea = pakistanAdministreredArea;

  ListBuilder<CountrySubDivision> _federalCapitalTerritory;
  ListBuilder<CountrySubDivision> get federalCapitalTerritory =>
      _$this._federalCapitalTerritory ??= new ListBuilder<CountrySubDivision>();
  set federalCapitalTerritory(
          ListBuilder<CountrySubDivision> federalCapitalTerritory) =>
      _$this._federalCapitalTerritory = federalCapitalTerritory;

  ListBuilder<CountrySubDivision> _departments;
  ListBuilder<CountrySubDivision> get departments =>
      _$this._departments ??= new ListBuilder<CountrySubDivision>();
  set departments(ListBuilder<CountrySubDivision> departments) =>
      _$this._departments = departments;

  ListBuilder<CountrySubDivision> _autonomousProvince;
  ListBuilder<CountrySubDivision> get autonomousProvince =>
      _$this._autonomousProvince ??= new ListBuilder<CountrySubDivision>();
  set autonomousProvince(ListBuilder<CountrySubDivision> autonomousProvince) =>
      _$this._autonomousProvince = autonomousProvince;

  ListBuilder<CountrySubDivision> _republic;
  ListBuilder<CountrySubDivision> get republic =>
      _$this._republic ??= new ListBuilder<CountrySubDivision>();
  set republic(ListBuilder<CountrySubDivision> republic) =>
      _$this._republic = republic;

  ListBuilder<CountrySubDivision> _administrativeTerritory;
  ListBuilder<CountrySubDivision> get administrativeTerritory =>
      _$this._administrativeTerritory ??= new ListBuilder<CountrySubDivision>();
  set administrativeTerritory(
          ListBuilder<CountrySubDivision> administrativeTerritory) =>
      _$this._administrativeTerritory = administrativeTerritory;

  ListBuilder<CountrySubDivision> _autonomousCity;
  ListBuilder<CountrySubDivision> get autonomousCity =>
      _$this._autonomousCity ??= new ListBuilder<CountrySubDivision>();
  set autonomousCity(ListBuilder<CountrySubDivision> autonomousCity) =>
      _$this._autonomousCity = autonomousCity;

  ListBuilder<CountrySubDivision> _geographicalEntity;
  ListBuilder<CountrySubDivision> get geographicalEntity =>
      _$this._geographicalEntity ??= new ListBuilder<CountrySubDivision>();
  set geographicalEntity(ListBuilder<CountrySubDivision> geographicalEntity) =>
      _$this._geographicalEntity = geographicalEntity;

  ListBuilder<CountrySubDivision> _area;
  ListBuilder<CountrySubDivision> get area =>
      _$this._area ??= new ListBuilder<CountrySubDivision>();
  set area(ListBuilder<CountrySubDivision> area) => _$this._area = area;

  ListBuilder<CountrySubDivision> _metropolitanAdministration;
  ListBuilder<CountrySubDivision> get metropolitanAdministration =>
      _$this._metropolitanAdministration ??=
          new ListBuilder<CountrySubDivision>();
  set metropolitanAdministration(
          ListBuilder<CountrySubDivision> metropolitanAdministration) =>
      _$this._metropolitanAdministration = metropolitanAdministration;

  ListBuilder<CountrySubDivision>
      _specialAdministrativeSpecialAdministrativeCity;
  ListBuilder<CountrySubDivision>
      get specialAdministrativeSpecialAdministrativeCity =>
          _$this._specialAdministrativeSpecialAdministrativeCity ??=
              new ListBuilder<CountrySubDivision>();
  set specialAdministrativeSpecialAdministrativeCity(
          ListBuilder<CountrySubDivision>
              specialAdministrativeSpecialAdministrativeCity) =>
      _$this._specialAdministrativeSpecialAdministrativeCity =
          specialAdministrativeSpecialAdministrativeCity;

  ListBuilder<CountrySubDivision> _districtsUnderRepublicAdministration;
  ListBuilder<CountrySubDivision> get districtsUnderRepublicAdministration =>
      _$this._districtsUnderRepublicAdministration ??=
          new ListBuilder<CountrySubDivision>();
  set districtsUnderRepublicAdministration(
          ListBuilder<CountrySubDivision>
              districtsUnderRepublicAdministration) =>
      _$this._districtsUnderRepublicAdministration =
          districtsUnderRepublicAdministration;

  ListBuilder<CountrySubDivision> _ward;
  ListBuilder<CountrySubDivision> get ward =>
      _$this._ward ??= new ListBuilder<CountrySubDivision>();
  set ward(ListBuilder<CountrySubDivision> ward) => _$this._ward = ward;

  ListBuilder<CountrySubDivision> _townCouncil;
  ListBuilder<CountrySubDivision> get townCouncil =>
      _$this._townCouncil ??= new ListBuilder<CountrySubDivision>();
  set townCouncil(ListBuilder<CountrySubDivision> townCouncil) =>
      _$this._townCouncil = townCouncil;

  ListBuilder<CountrySubDivision> _islandCouncil;
  ListBuilder<CountrySubDivision> get islandCouncil =>
      _$this._islandCouncil ??= new ListBuilder<CountrySubDivision>();
  set islandCouncil(ListBuilder<CountrySubDivision> islandCouncil) =>
      _$this._islandCouncil = islandCouncil;

  ListBuilder<CountrySubDivision> _groupsOfIslands;
  ListBuilder<CountrySubDivision> get groupsOfIslands =>
      _$this._groupsOfIslands ??= new ListBuilder<CountrySubDivision>();
  set groupsOfIslands(ListBuilder<CountrySubDivision> groupsOfIslands) =>
      _$this._groupsOfIslands = groupsOfIslands;

  ListBuilder<CountrySubDivision> _outlyingArea;
  ListBuilder<CountrySubDivision> get outlyingArea =>
      _$this._outlyingArea ??= new ListBuilder<CountrySubDivision>();
  set outlyingArea(ListBuilder<CountrySubDivision> outlyingArea) =>
      _$this._outlyingArea = outlyingArea;

  SubDivisionDataBuilder();

  SubDivisionDataBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _parish = _$v.parish?.toBuilder();
      _emirate = _$v.emirate?.toBuilder();
      _province = _$v.province?.toBuilder();
      _dependency = _$v.dependency?.toBuilder();
      _state = _$v.state?.toBuilder();
      _county = _$v.county?.toBuilder();
      _region = _$v.region?.toBuilder();
      _city = _$v.city?.toBuilder();
      _territory = _$v.territory?.toBuilder();
      _rayon = _$v.rayon?.toBuilder();
      _municipality = _$v.municipality?.toBuilder();
      _autonomousRepublic = _$v.autonomousRepublic?.toBuilder();
      _entity = _$v.entity?.toBuilder();
      _districtWithSpecialStatus = _$v.districtWithSpecialStatus?.toBuilder();
      _district = _$v.district?.toBuilder();
      _governorat = _$v.governorat?.toBuilder();
      _department = _$v.department?.toBuilder();
      _specialMunicipality = _$v.specialMunicipality?.toBuilder();
      _federalDistrict = _$v.federalDistrict?.toBuilder();
      _town = _$v.town?.toBuilder();
      _oblast = _$v.oblast?.toBuilder();
      _prefecture = _$v.prefecture?.toBuilder();
      _commune = _$v.commune?.toBuilder();
      _economicPrefecture = _$v.economicPrefecture?.toBuilder();
      _canton = _$v.canton?.toBuilder();
      _autonomousDistrict = _$v.autonomousDistrict?.toBuilder();
      _autonomousRegion = _$v.autonomousRegion?.toBuilder();
      _specialAdministrativeRegion =
          _$v.specialAdministrativeRegion?.toBuilder();
      _capitalDistrict = _$v.capitalDistrict?.toBuilder();
      _lander = _$v.lander?.toBuilder();
      _governorate = _$v.governorate?.toBuilder();
      _autonomousCityInNorthAfrica =
          _$v.autonomousCityInNorthAfrica?.toBuilder();
      _administration = _$v.administration?.toBuilder();
      _metropolitanDepartment = _$v.metropolitanDepartment?.toBuilder();
      _councilArea = _$v.councilArea?.toBuilder();
      _unitaryAuthority = _$v.unitaryAuthority?.toBuilder();
      _districtCouncilArea = _$v.districtCouncilArea?.toBuilder();
      _londonBorough = _$v.londonBorough?.toBuilder();
      _cityCorporation = _$v.cityCorporation?.toBuilder();
      _division = _$v.division?.toBuilder();
      _administrativeRegion = _$v.administrativeRegion?.toBuilder();
      _autonomousSector = _$v.autonomousSector?.toBuilder();
      _cityOfCountyRight = _$v.cityOfCountyRight?.toBuilder();
      _capitalCity = _$v.capitalCity?.toBuilder();
      _autononousProvince = _$v.autononousProvince?.toBuilder();
      _specialDistrict = _$v.specialDistrict?.toBuilder();
      _specialRegion = _$v.specialRegion?.toBuilder();
      _unionTerritory = _$v.unionTerritory?.toBuilder();
      _partish = _$v.partish?.toBuilder();
      _autonomousMunicipality = _$v.autonomousMunicipality?.toBuilder();
      _groupOfIslands = _$v.groupOfIslands?.toBuilder();
      _island = _$v.island?.toBuilder();
      _specialCity = _$v.specialCity?.toBuilder();
      _metropolitanCity = _$v.metropolitanCity?.toBuilder();
      _specialSelfGoverningProvince =
          _$v.specialSelfGoverningProvince?.toBuilder();
      _specialSelfGoverningCity = _$v.specialSelfGoverningCity?.toBuilder();
      _districtMunicipality = _$v.districtMunicipality?.toBuilder();
      _cityMunicipality = _$v.cityMunicipality?.toBuilder();
      _republicanCity = _$v.republicanCity?.toBuilder();
      _popularate = _$v.popularate?.toBuilder();
      _economicRegion = _$v.economicRegion?.toBuilder();
      _quarter = _$v.quarter?.toBuilder();
      _autonomousTerritoryUnit = _$v.autonomousTerritoryUnit?.toBuilder();
      _territorialUnit = _$v.territorialUnit?.toBuilder();
      _chainsOfIslands = _$v.chainsOfIslands?.toBuilder();
      _localCouncil = _$v.localCouncil?.toBuilder();
      _administrativeAtoll = _$v.administrativeAtoll?.toBuilder();
      _capital = _$v.capital?.toBuilder();
      _federalTerritory = _$v.federalTerritory?.toBuilder();
      _urbanCommunity = _$v.urbanCommunity?.toBuilder();
      _capitalTerritory = _$v.capitalTerritory?.toBuilder();
      _arcticRegion = _$v.arcticRegion?.toBuilder();
      _zone = _$v.zone?.toBuilder();
      _specialIslandAuthorithy = _$v.specialIslandAuthorithy?.toBuilder();
      _indigenousRegion = _$v.indigenousRegion?.toBuilder();
      _pakistanAdministreredArea = _$v.pakistanAdministreredArea?.toBuilder();
      _federalCapitalTerritory = _$v.federalCapitalTerritory?.toBuilder();
      _departments = _$v.departments?.toBuilder();
      _autonomousProvince = _$v.autonomousProvince?.toBuilder();
      _republic = _$v.republic?.toBuilder();
      _administrativeTerritory = _$v.administrativeTerritory?.toBuilder();
      _autonomousCity = _$v.autonomousCity?.toBuilder();
      _geographicalEntity = _$v.geographicalEntity?.toBuilder();
      _area = _$v.area?.toBuilder();
      _metropolitanAdministration = _$v.metropolitanAdministration?.toBuilder();
      _specialAdministrativeSpecialAdministrativeCity =
          _$v.specialAdministrativeSpecialAdministrativeCity?.toBuilder();
      _districtsUnderRepublicAdministration =
          _$v.districtsUnderRepublicAdministration?.toBuilder();
      _ward = _$v.ward?.toBuilder();
      _townCouncil = _$v.townCouncil?.toBuilder();
      _islandCouncil = _$v.islandCouncil?.toBuilder();
      _groupsOfIslands = _$v.groupsOfIslands?.toBuilder();
      _outlyingArea = _$v.outlyingArea?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubDivisionData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubDivisionData;
  }

  @override
  void update(void Function(SubDivisionDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubDivisionData build() {
    _$SubDivisionData _$result;
    try {
      _$result = _$v ??
          new _$SubDivisionData._(
              country: country,
              parish: _parish?.build(),
              emirate: _emirate?.build(),
              province: _province?.build(),
              dependency: _dependency?.build(),
              state: _state?.build(),
              county: _county?.build(),
              region: _region?.build(),
              city: _city?.build(),
              territory: _territory?.build(),
              rayon: _rayon?.build(),
              municipality: _municipality?.build(),
              autonomousRepublic: _autonomousRepublic?.build(),
              entity: _entity?.build(),
              districtWithSpecialStatus: _districtWithSpecialStatus?.build(),
              district: _district?.build(),
              governorat: _governorat?.build(),
              department: _department?.build(),
              specialMunicipality: _specialMunicipality?.build(),
              federalDistrict: _federalDistrict?.build(),
              town: _town?.build(),
              oblast: _oblast?.build(),
              prefecture: _prefecture?.build(),
              commune: _commune?.build(),
              economicPrefecture: _economicPrefecture?.build(),
              canton: _canton?.build(),
              autonomousDistrict: _autonomousDistrict?.build(),
              autonomousRegion: _autonomousRegion?.build(),
              specialAdministrativeRegion:
                  _specialAdministrativeRegion?.build(),
              capitalDistrict: _capitalDistrict?.build(),
              lander: _lander?.build(),
              governorate: _governorate?.build(),
              autonomousCityInNorthAfrica:
                  _autonomousCityInNorthAfrica?.build(),
              administration: _administration?.build(),
              metropolitanDepartment: _metropolitanDepartment?.build(),
              councilArea: _councilArea?.build(),
              unitaryAuthority: _unitaryAuthority?.build(),
              districtCouncilArea: _districtCouncilArea?.build(),
              londonBorough: _londonBorough?.build(),
              cityCorporation: _cityCorporation?.build(),
              division: _division?.build(),
              administrativeRegion: _administrativeRegion?.build(),
              autonomousSector: _autonomousSector?.build(),
              cityOfCountyRight: _cityOfCountyRight?.build(),
              capitalCity: _capitalCity?.build(),
              autononousProvince: _autononousProvince?.build(),
              specialDistrict: _specialDistrict?.build(),
              specialRegion: _specialRegion?.build(),
              unionTerritory: _unionTerritory?.build(),
              partish: _partish?.build(),
              autonomousMunicipality: _autonomousMunicipality?.build(),
              groupOfIslands: _groupOfIslands?.build(),
              island: _island?.build(),
              specialCity: _specialCity?.build(),
              metropolitanCity: _metropolitanCity?.build(),
              specialSelfGoverningProvince:
                  _specialSelfGoverningProvince?.build(),
              specialSelfGoverningCity: _specialSelfGoverningCity?.build(),
              districtMunicipality: _districtMunicipality?.build(),
              cityMunicipality: _cityMunicipality?.build(),
              republicanCity: _republicanCity?.build(),
              popularate: _popularate?.build(),
              economicRegion: _economicRegion?.build(),
              quarter: _quarter?.build(),
              autonomousTerritoryUnit: _autonomousTerritoryUnit?.build(),
              territorialUnit: _territorialUnit?.build(),
              chainsOfIslands: _chainsOfIslands?.build(),
              localCouncil: _localCouncil?.build(),
              administrativeAtoll: _administrativeAtoll?.build(),
              capital: _capital?.build(),
              federalTerritory: _federalTerritory?.build(),
              urbanCommunity: _urbanCommunity?.build(),
              capitalTerritory: _capitalTerritory?.build(),
              arcticRegion: _arcticRegion?.build(),
              zone: _zone?.build(),
              specialIslandAuthorithy: _specialIslandAuthorithy?.build(),
              indigenousRegion: _indigenousRegion?.build(),
              pakistanAdministreredArea: _pakistanAdministreredArea?.build(),
              federalCapitalTerritory: _federalCapitalTerritory?.build(),
              departments: _departments?.build(),
              autonomousProvince: _autonomousProvince?.build(),
              republic: _republic?.build(),
              administrativeTerritory: _administrativeTerritory?.build(),
              autonomousCity: _autonomousCity?.build(),
              geographicalEntity: _geographicalEntity?.build(),
              area: _area?.build(),
              metropolitanAdministration: _metropolitanAdministration?.build(),
              specialAdministrativeSpecialAdministrativeCity:
                  _specialAdministrativeSpecialAdministrativeCity?.build(),
              districtsUnderRepublicAdministration:
                  _districtsUnderRepublicAdministration?.build(),
              ward: _ward?.build(),
              townCouncil: _townCouncil?.build(),
              islandCouncil: _islandCouncil?.build(),
              groupsOfIslands: _groupsOfIslands?.build(),
              outlyingArea: _outlyingArea?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parish';
        _parish?.build();
        _$failedField = 'emirate';
        _emirate?.build();
        _$failedField = 'province';
        _province?.build();
        _$failedField = 'dependency';
        _dependency?.build();
        _$failedField = 'state';
        _state?.build();
        _$failedField = 'county';
        _county?.build();
        _$failedField = 'region';
        _region?.build();
        _$failedField = 'city';
        _city?.build();
        _$failedField = 'territory';
        _territory?.build();
        _$failedField = 'rayon';
        _rayon?.build();
        _$failedField = 'municipality';
        _municipality?.build();
        _$failedField = 'autonomousRepublic';
        _autonomousRepublic?.build();
        _$failedField = 'entity';
        _entity?.build();
        _$failedField = 'districtWithSpecialStatus';
        _districtWithSpecialStatus?.build();
        _$failedField = 'district';
        _district?.build();
        _$failedField = 'governorat';
        _governorat?.build();
        _$failedField = 'department';
        _department?.build();
        _$failedField = 'specialMunicipality';
        _specialMunicipality?.build();
        _$failedField = 'federalDistrict';
        _federalDistrict?.build();
        _$failedField = 'town';
        _town?.build();
        _$failedField = 'oblast';
        _oblast?.build();
        _$failedField = 'prefecture';
        _prefecture?.build();
        _$failedField = 'commune';
        _commune?.build();
        _$failedField = 'economicPrefecture';
        _economicPrefecture?.build();
        _$failedField = 'canton';
        _canton?.build();
        _$failedField = 'autonomousDistrict';
        _autonomousDistrict?.build();
        _$failedField = 'autonomousRegion';
        _autonomousRegion?.build();
        _$failedField = 'specialAdministrativeRegion';
        _specialAdministrativeRegion?.build();
        _$failedField = 'capitalDistrict';
        _capitalDistrict?.build();
        _$failedField = 'lander';
        _lander?.build();
        _$failedField = 'governorate';
        _governorate?.build();
        _$failedField = 'autonomousCityInNorthAfrica';
        _autonomousCityInNorthAfrica?.build();
        _$failedField = 'administration';
        _administration?.build();
        _$failedField = 'metropolitanDepartment';
        _metropolitanDepartment?.build();
        _$failedField = 'councilArea';
        _councilArea?.build();
        _$failedField = 'unitaryAuthority';
        _unitaryAuthority?.build();
        _$failedField = 'districtCouncilArea';
        _districtCouncilArea?.build();
        _$failedField = 'londonBorough';
        _londonBorough?.build();
        _$failedField = 'cityCorporation';
        _cityCorporation?.build();
        _$failedField = 'division';
        _division?.build();
        _$failedField = 'administrativeRegion';
        _administrativeRegion?.build();
        _$failedField = 'autonomousSector';
        _autonomousSector?.build();
        _$failedField = 'cityOfCountyRight';
        _cityOfCountyRight?.build();
        _$failedField = 'capitalCity';
        _capitalCity?.build();
        _$failedField = 'autononousProvince';
        _autononousProvince?.build();
        _$failedField = 'specialDistrict';
        _specialDistrict?.build();
        _$failedField = 'specialRegion';
        _specialRegion?.build();
        _$failedField = 'unionTerritory';
        _unionTerritory?.build();
        _$failedField = 'partish';
        _partish?.build();
        _$failedField = 'autonomousMunicipality';
        _autonomousMunicipality?.build();
        _$failedField = 'groupOfIslands';
        _groupOfIslands?.build();
        _$failedField = 'island';
        _island?.build();
        _$failedField = 'specialCity';
        _specialCity?.build();
        _$failedField = 'metropolitanCity';
        _metropolitanCity?.build();
        _$failedField = 'specialSelfGoverningProvince';
        _specialSelfGoverningProvince?.build();
        _$failedField = 'specialSelfGoverningCity';
        _specialSelfGoverningCity?.build();
        _$failedField = 'districtMunicipality';
        _districtMunicipality?.build();
        _$failedField = 'cityMunicipality';
        _cityMunicipality?.build();
        _$failedField = 'republicanCity';
        _republicanCity?.build();
        _$failedField = 'popularate';
        _popularate?.build();
        _$failedField = 'economicRegion';
        _economicRegion?.build();
        _$failedField = 'quarter';
        _quarter?.build();
        _$failedField = 'autonomousTerritoryUnit';
        _autonomousTerritoryUnit?.build();
        _$failedField = 'territorialUnit';
        _territorialUnit?.build();
        _$failedField = 'chainsOfIslands';
        _chainsOfIslands?.build();
        _$failedField = 'localCouncil';
        _localCouncil?.build();
        _$failedField = 'administrativeAtoll';
        _administrativeAtoll?.build();
        _$failedField = 'capital';
        _capital?.build();
        _$failedField = 'federalTerritory';
        _federalTerritory?.build();
        _$failedField = 'urbanCommunity';
        _urbanCommunity?.build();
        _$failedField = 'capitalTerritory';
        _capitalTerritory?.build();
        _$failedField = 'arcticRegion';
        _arcticRegion?.build();
        _$failedField = 'zone';
        _zone?.build();
        _$failedField = 'specialIslandAuthorithy';
        _specialIslandAuthorithy?.build();
        _$failedField = 'indigenousRegion';
        _indigenousRegion?.build();
        _$failedField = 'pakistanAdministreredArea';
        _pakistanAdministreredArea?.build();
        _$failedField = 'federalCapitalTerritory';
        _federalCapitalTerritory?.build();
        _$failedField = 'departments';
        _departments?.build();
        _$failedField = 'autonomousProvince';
        _autonomousProvince?.build();
        _$failedField = 'republic';
        _republic?.build();
        _$failedField = 'administrativeTerritory';
        _administrativeTerritory?.build();
        _$failedField = 'autonomousCity';
        _autonomousCity?.build();
        _$failedField = 'geographicalEntity';
        _geographicalEntity?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'metropolitanAdministration';
        _metropolitanAdministration?.build();
        _$failedField = 'specialAdministrativeSpecialAdministrativeCity';
        _specialAdministrativeSpecialAdministrativeCity?.build();
        _$failedField = 'districtsUnderRepublicAdministration';
        _districtsUnderRepublicAdministration?.build();
        _$failedField = 'ward';
        _ward?.build();
        _$failedField = 'townCouncil';
        _townCouncil?.build();
        _$failedField = 'islandCouncil';
        _islandCouncil?.build();
        _$failedField = 'groupsOfIslands';
        _groupsOfIslands?.build();
        _$failedField = 'outlyingArea';
        _outlyingArea?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubDivisionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
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
