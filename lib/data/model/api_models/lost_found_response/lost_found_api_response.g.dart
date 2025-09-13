// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_found_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostFoundApiResponseImpl _$$LostFoundApiResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LostFoundApiResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => LostFoundItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  error: json['error'] as String?,
  details: json['details'] as String?,
);

Map<String, dynamic> _$$LostFoundApiResponseImplToJson(
  _$LostFoundApiResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
  'error': instance.error,
  'details': instance.details,
};
