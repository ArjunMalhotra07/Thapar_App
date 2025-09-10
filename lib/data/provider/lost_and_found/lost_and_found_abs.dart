import 'package:thaparapp/data/model/lost_and_found_item/lost_found_response.dart';

abstract class LostAndFoundProvider {
  Future<LostFoundResponse> fetchItems();
}