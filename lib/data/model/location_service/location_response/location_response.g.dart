// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsResponseImpl _$$LocationsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LocationsResponseImpl(
  locations: (json['locations'] as List<dynamic>)
      .map((e) => Location.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: (json['count'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$LocationsResponseImplToJson(
  _$LocationsResponseImpl instance,
) => <String, dynamic>{
  'locations': instance.locations,
  'count': instance.count,
  'limit': instance.limit,
};
