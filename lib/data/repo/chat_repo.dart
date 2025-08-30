import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/provider/chat/chat_abs.dart';

class ChatRepo {
  final ChatProvider chatProvider;

  ChatRepo({required this.chatProvider});

  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  }) async {
    return await chatProvider.sendMessage(chatId: chatId, message: message);
  }

  Future<List<ChatMessage>> getChatHistory({required String chatId}) async {
    return await chatProvider.getChatHistory(chatId: chatId);
  }

  Future<void> clearChat({required String chatId}) async {
    return await chatProvider.clearChat(chatId: chatId);
  }
}
