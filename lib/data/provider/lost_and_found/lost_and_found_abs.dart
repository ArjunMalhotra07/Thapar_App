import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';

abstract class LostAndFoundProvider {
  Future<List<LostFoundItem>> fetchItems();
}