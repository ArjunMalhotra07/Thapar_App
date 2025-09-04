import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/provider/chat/chat_abs.dart';
import 'package:thaparapp/network/chat_service.dart';

class ChatApiProvider implements ChatProvider {
  final ChatService chatService;

  ChatApiProvider({required this.chatService});

  @override
  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  }) async {
    try {
      final response = await chatService.sendMessage(
        userId: chatId,
        message: message,
      );

      return ChatMessage(
        id: _generateMessageId(),
        message: response.message,
        isUser: false,
        timeStamp: DateTime.parse(response.timestamp),
        status: MessageStatus.sent,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ChatMessage>> getChatHistory({required String chatId}) async {
    try {
      final response = await chatService.getHistory(userId: chatId);
      
      return response.messages.map((historyMessage) {
        return ChatMessage(
          id: _generateMessageId(),
          message: historyMessage.message,
          isUser: historyMessage.role == 'user',
          timeStamp: DateTime.parse(historyMessage.timestamp),
          status: MessageStatus.sent,
        );
      }).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> clearChat({required String chatId}) async {
    // This endpoint is not provided in the new API specification
    // Keep empty implementation for now
  }

  String _generateMessageId() =>
      DateTime.now().microsecondsSinceEpoch.toString();
}
