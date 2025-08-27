abstract class BaseApiService {
  Future<dynamic> getAPI({
    required String url,
    required dynamic queryParams,
    required String? bearerToken,
  });
  Future<dynamic> postAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  });
  Future<dynamic> putAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  });
  Future<dynamic> deleteAPI({
    required String url,
    required dynamic body,
    required dynamic queryParams,
    String? bearerToken,
  });
}
