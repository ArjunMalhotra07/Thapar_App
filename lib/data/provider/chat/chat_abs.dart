import 'package:thaparapp/data/model/chat/chat_message.dart';

abstract class ChatProvider {
  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  });

  Future<List<ChatMessage>> getChatHistory({required String chatId});
  Future<void> clearChat({required String chatId});
}
