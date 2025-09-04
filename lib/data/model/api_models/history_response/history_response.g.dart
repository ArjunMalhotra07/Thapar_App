// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryResponseImpl _$$HistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$HistoryResponseImpl(
  messages: (json['messages'] as List<dynamic>)
      .map((e) => HistoryMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$HistoryResponseImplToJson(
  _$HistoryResponseImpl instance,
) => <String, dynamic>{'messages': instance.messages};

_$HistoryMessageImpl _$$HistoryMessageImplFromJson(Map<String, dynamic> json) =>
    _$HistoryMessageImpl(
      role: json['role'] as String,
      message: json['message'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$HistoryMessageImplToJson(
  _$HistoryMessageImpl instance,
) => <String, dynamic>{
  'role': instance.role,
  'message': instance.message,
  'timestamp': instance.timestamp,
};
