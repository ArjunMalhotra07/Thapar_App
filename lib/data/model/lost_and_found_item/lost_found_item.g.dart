// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_found_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LostFoundItemImpl _$$LostFoundItemImplFromJson(Map<String, dynamic> json) =>
    _$LostFoundItemImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      collectFrom: json['collectFrom'] as String?,
      imageUrl: json['imageUrl'] as String?,
      dateFound: json['dateFound'] == null
          ? null
          : DateTime.parse(json['dateFound'] as String),
      type: $enumDecodeNullable(_$LostFoundTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$LostFoundItemImplToJson(_$LostFoundItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'collectFrom': instance.collectFrom,
      'imageUrl': instance.imageUrl,
      'dateFound': instance.dateFound?.toIso8601String(),
      'type': _$LostFoundTypeEnumMap[instance.type],
    };

const _$LostFoundTypeEnumMap = {
  LostFoundType.lost: 'lost',
  LostFoundType.found: 'found',
};
