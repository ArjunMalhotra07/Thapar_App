// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_found_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostFoundApiItemImpl _$$LostFoundApiItemImplFromJson(
  Map<String, dynamic> json,
) => _$LostFoundApiItemImpl(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  properties: json['properties'] as String?,
  createdAt: json['createdAt'] as String?,
  location: json['location'] as String?,
  imageUrl: json['imageUrl'] as String?,
  color: json['color'] as String?,
  contact: json['contact'] as String?,
  date: json['date'] as String?,
);

Map<String, dynamic> _$$LostFoundApiItemImplToJson(
  _$LostFoundApiItemImpl instance,
) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'properties': instance.properties,
  'createdAt': instance.createdAt,
  'location': instance.location,
  'imageUrl': instance.imageUrl,
  'color': instance.color,
  'contact': instance.contact,
  'date': instance.date,
};

_$LostFoundApiResponseImpl _$$LostFoundApiResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LostFoundApiResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => LostFoundApiItem.fromJson(e as Map<String, dynamic>))
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
