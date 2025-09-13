import 'package:thaparapp/data/model/api_models/lost_found_response/lost_found_api_response.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_response.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class LostAndFoundApiProvider implements LostAndFoundProvider {
  final BaseApiService service;

  LostAndFoundApiProvider({required this.service});

  @override
  Future<LostFoundResponse> fetchItems() async {
    print("here");
    try {
      final response = await service.getAPI(
        url: AppURL.lostAndFound,
        queryParams: null,
        bearerToken: null,
      );
      final apiResponse = LostFoundApiResponse.fromJson(response);
      final items = apiResponse.data.map((apiItem) {
        return LostFoundItem(
          id: int.tryParse(apiItem.id ?? '0'),
          name: apiItem.title,
          properties: apiItem.description,
          color: apiItem.color ?? 'Unknown',
          imageUrl: apiItem.imageUrl,
          location: apiItem.location ?? 'Unknown Location',
          date: apiItem.createdAt != null
              ? DateTime.parse(apiItem.createdAt!)
              : DateTime.now(),
        );
      }).toList();

      return LostFoundResponse(items: items);
    } catch (e) {
      rethrow;
    }
  }
}
