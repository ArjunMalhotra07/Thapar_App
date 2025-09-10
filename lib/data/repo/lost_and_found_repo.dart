import 'package:thaparapp/data/model/lost_and_found_item/lost_found_response.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';

class LostAndFoundRepo {
  final LostAndFoundProvider lostAndFoundProvider;
  
  LostAndFoundRepo({required this.lostAndFoundProvider});

  Future<LostFoundResponse> fetchItems() async {
    return await lostAndFoundProvider.fetchItems();
  }
}