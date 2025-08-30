// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String?,
      message: json['message'] as String?,
      isUser: json['isUser'] as bool,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
      status: $enumDecodeNullable(_$MessageStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'isUser': instance.isUser,
      'timeStamp': instance.timeStamp.toIso8601String(),
      'status': _$MessageStatusEnumMap[instance.status],
    };

const _$MessageStatusEnumMap = {
  MessageStatus.sending: 'sending',
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.failed: 'failed',
};
