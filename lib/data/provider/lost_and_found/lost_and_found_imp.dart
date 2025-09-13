import 'package:thaparapp/data/model/lost_and_found_item/lost_found_response.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class LostAndFoundApiProvider implements LostAndFoundProvider {
  final BaseApiService service;
  
  LostAndFoundApiProvider({required this.service});
  
  @override
  Future<LostFoundResponse> fetchItems() async {
    final response = await service.getAPI(
      url: AppURL.lostAndFound,
      queryParams: {},
      bearerToken: null,
    );
    return LostFoundResponse.fromJson(response);
  }
}