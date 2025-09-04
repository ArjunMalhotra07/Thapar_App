import 'package:thaparapp/data/model/api_models/chat_response/chat_response.dart';
import 'package:thaparapp/data/model/api_models/history_response/history_response.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

abstract class ChatService {
  Future<ChatResponse> sendMessage({
    required String userId,
    required String message,
  });
  
  Future<HistoryResponse> getHistory({required String userId});
}

class ChatServiceImpl implements ChatService {
  BaseApiService apiService;
  ChatServiceImpl({required this.apiService});

  @override
  Future<ChatResponse> sendMessage({
    required String userId,
    required String message,
  }) async {
    try {
      String url = AppURL.chat;
      final response = await apiService.postAPI(
        url: url,
        body: {
          "userId": userId,
          "message": message,
        },
        queryParams: null,
      );
      return ChatResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HistoryResponse> getHistory({required String userId}) async {
    try {
      String url = AppURL.getHistory;
      final response = await apiService.getAPI(
        url: url,
        queryParams: {"userId": userId},
        bearerToken: null,
      );
      
      // API returns array directly, not wrapped in object
      if (response is List) {
        return HistoryResponse(
          messages: response.map((json) => HistoryMessage.fromJson(json)).toList(),
        );
      } else {
        // Fallback if response is wrapped
        return HistoryResponse.fromJson(response);
      }
    } catch (e) {
      rethrow;
    }
  }
}