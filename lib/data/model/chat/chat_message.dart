import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String? id,
    required final String? message,
    required final bool isUser,
    required final DateTime timeStamp,
    required final MessageStatus? status,
  }) = _ChatMessage;
  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

enum MessageStatus { sending, sent, delivered, failed }
