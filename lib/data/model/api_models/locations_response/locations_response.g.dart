// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsApiResponseImpl _$$LocationsApiResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LocationsApiResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => Location.fromJson(e as Map<String, dynamic>))
      .toList(),
  error: json['error'] as String?,
  details: json['details'] as String?,
);

Map<String, dynamic> _$$LocationsApiResponseImplToJson(
  _$LocationsApiResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
  'error': instance.error,
  'details': instance.details,
};
