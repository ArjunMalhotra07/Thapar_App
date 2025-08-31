// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsResponseImpl _$$LocationsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LocationsResponseImpl(
  locations: (json['locations'] as List<dynamic>?)
      ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
      .toList(),
  success: json['success'] as bool,
  message: json['message'] as String?,
  total: (json['total'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$$LocationsResponseImplToJson(
  _$LocationsResponseImpl instance,
) => <String, dynamic>{
  'locations': instance.locations,
  'success': instance.success,
  'message': instance.message,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
};
