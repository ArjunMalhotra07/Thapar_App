import 'package:thaparapp/data/model/api_models/chat_response/chat_response.dart';
import 'package:thaparapp/data/model/api_models/chat_history_response/chat_history_response.dart';
import 'package:thaparapp/data/model/chat/chat_message.dart';
import 'package:thaparapp/data/provider/chat/chat_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class ChatApiProvider implements ChatProvider {
  final BaseApiService _service;

  ChatApiProvider({required BaseApiService service}) : _service = service;

  @override
  Future<ChatMessage> sendMessage({
    required String chatId,
    required String message,
  }) async {
    try {
      final response = await _service.postAPI(
        url: AppURL.chat,
        body: {
          "userId": chatId,
          "message": message,
        },
        queryParams: null,
      );
      
      final chatResponse = ChatResponse.fromJson(response);
      return ChatMessage(
        id: _generateMessageId(),
        message: chatResponse.message,
        isUser: false,
        timeStamp: DateTime.now(),
        status: MessageStatus.sent,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ChatMessage>> getChatHistory({required String chatId}) async {
    try {
      final response = await _service.getAPI(
        url: AppURL.getHistory,
        queryParams: {"userId": chatId},
        bearerToken: null,
      );
      
      final apiResponse = ChatHistoryApiResponse.fromJson(response);
      
      if (!apiResponse.success) {
        throw Exception(apiResponse.error ?? 'Failed to fetch chat history');
      }
      
      return apiResponse.data.map((historyMessage) {
        final apiTime = DateTime.parse(historyMessage.timestamp);
        final localTime = apiTime.toLocal();
        return ChatMessage(
          id: _generateMessageId(),
          message: historyMessage.message,
          isUser: historyMessage.role == 'user',
          timeStamp: localTime,
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
