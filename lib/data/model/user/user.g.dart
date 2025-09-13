// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  userId: json['userId'] as String?,
  gender: json['gender'] as String?,
  category: json['category'] as String?,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'userId': instance.userId,
      'gender': instance.gender,
      'category': instance.category,
    };
