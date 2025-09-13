// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_found_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostFoundItemImpl _$$LostFoundItemImplFromJson(Map<String, dynamic> json) =>
    _$LostFoundItemImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      properties: json['properties'] as String?,
      color: json['color'] as String?,
      imageUrl: json['imageUrl'] as String?,
      location: json['location'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$LostFoundItemImplToJson(_$LostFoundItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'properties': instance.properties,
      'color': instance.color,
      'imageUrl': instance.imageUrl,
      'location': instance.location,
      'date': instance.date?.toIso8601String(),
    };
