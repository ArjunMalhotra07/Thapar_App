import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/provider/chat/chat_abs.dart';

class ChatApiProvider implements ChatProvider {
  final String baseUrl;
  final Map<String, String> headers;

  ChatApiProvider({
    required this.baseUrl,
    this.headers = const {'Content-Type': 'application/json'},
  });

  @override
  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  }) async {
    try {
      // Replace with your actual HTTP implementation
      final response = await http.post(
        Uri.parse('$baseUrl/chat/send'),
        headers: headers,
        body: jsonEncode({
          'chatId': chatId,
          'message': message,
          'timestamp': DateTime.now().toIso8601String(),
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ChatMessage.fromJson(data);
      } else {
        throw Exception('Failed to send message: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }

  @override
  Future<List<ChatMessage>> getChatHistory({required String chatId}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/chat/history/$chatId'),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> messagesJson = data['messages'] ?? [];

        return messagesJson.map((json) => ChatMessage.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load chat history: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }

  @override
  Future<void> clearChat({required String chatId}) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/chat/$chatId'),
        headers: headers,
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to clear chat: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }
}
