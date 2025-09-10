import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_response.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';

class LostAndFoundLocalProvider implements LostAndFoundProvider {
  @override
  Future<LostFoundResponse> fetchItems() async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    
    // Mock data - moved from UI
    final mockItems = [
      LostFoundItem(
        id: 1,
        title: 'Milton Bottle',
        description:
            '1L capacity, Stainless steel Milton bottle, silver finish, cylindrical shape with a black screw cap.',
        location: 'NEAR LIBRARY OFFICE',
        collectFrom: 'LOST & FOUND Dept.',
        imageUrl:
            'https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=400',
        dateFound: DateTime(2025, 9, 9),
        type: LostFoundType.found,
      ),
      LostFoundItem(
        id: 2,
        title: 'Honda Vehicle Key',
        description:
            'Simple black color key without any keychain, found on table, submitted just after today\'s mid sem exam.',
        location: 'CSE DEPT CLASS 32B',
        collectFrom: 'LOST & FOUND Dept.',
        imageUrl:
            'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
        dateFound: DateTime(2025, 9, 8),
        type: LostFoundType.found,
      ),
      LostFoundItem(
        id: 3,
        title: 'Blue Backpack',
        description:
            'Navy blue backpack with laptop compartment, Dell logo on front pocket.',
        location: 'G Block Cafeteria',
        collectFrom: 'LOST & FOUND Dept.',
        imageUrl:
            'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
        dateFound: DateTime(2025, 9, 7),
        type: LostFoundType.found,
      ),
      LostFoundItem(
        id: 4,
        title: 'Scientific Calculator',
        description:
            'Casio FX-991ES Plus scientific calculator, black color with missing battery cover.',
        location: 'Exam Hall A',
        collectFrom: 'LOST & FOUND Dept.',
        imageUrl:
            'https://images.unsplash.com/photo-1611125832047-1d7ad1e8e48f?w=400',
        dateFound: DateTime(2025, 9, 6),
        type: LostFoundType.found,
      ),
      LostFoundItem(
        id: 5,
        title: 'Wireless Earbuds',
        description:
            'White Apple AirPods Pro in charging case, left earbud has slight scratch.',
        location: 'Sports Complex',
        collectFrom: 'LOST & FOUND Dept.',
        imageUrl:
            'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=400',
        dateFound: DateTime(2025, 9, 5),
        type: LostFoundType.lost,
      ),
    ];
    
    return LostFoundResponse(
      items: mockItems,
      count: mockItems.length,
    );
  }
}