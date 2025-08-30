import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/provider/chat/chat_abs.dart';

class ChatLocalProvider implements ChatProvider {
  final Map<String, List<ChatMessage>> _localChats = {};

  @override
  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  }) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));

    // Simulate AI responses
    final responses = [
      "That's a great question! Let me help you with that.",
      "I understand what you're asking. Here's what I know about that topic.",
      "Thanks for reaching out! I can provide some information on this.",
      "Let me look that up for you and provide the best answer I can.",
    ];

    final response = responses[DateTime.now().millisecond % responses.length];

    return ChatMessage(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      timeStamp: DateTime.now(),
      message: response,
      isUser: true,
      status: null,
    );
  }

  @override
  Future<List<ChatMessage>> getChatHistory({required String chatId}) async {
    await Future.delayed(Duration(milliseconds: 500));
    return _localChats[chatId] ?? [];
  }

  @override
  Future<void> clearChat({required String chatId}) async {
    await Future.delayed(Duration(milliseconds: 200));
    _localChats.remove(chatId);
  }
}
