import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';

class LostAndFoundRepo {
  final LostAndFoundProvider lostAndFoundProvider;
  
  LostAndFoundRepo({required this.lostAndFoundProvider});

  Future<List<LostFoundItem>> fetchItems() async {
    return await lostAndFoundProvider.fetchItems();
  }
}