import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/data/provider/lost_and_found/lost_and_found_abs.dart';

class LostAndFoundLocalProvider implements LostAndFoundProvider {
  @override
  Future<List<LostFoundItem>> fetchItems() async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    
    // Mock data with updated schema
    final mockItems = [
      LostFoundItem(
        id: 1,
        name: 'Milton Bottle',
        properties:
            '1L capacity, Stainless steel Milton bottle, silver finish, cylindrical shape with a black screw cap.',
        color: 'Silver',
        location: 'NEAR LIBRARY OFFICE',
        imageUrl:
            'https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=400',
        date: DateTime(2025, 9, 9),
      ),
      LostFoundItem(
        id: 2,
        name: 'Honda Vehicle Key',
        properties:
            'Simple black color key without any keychain, found on table, submitted just after today\'s mid sem exam.',
        color: 'Black',
        location: 'CSE DEPT CLASS 32B',
        imageUrl:
            'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
        date: DateTime(2025, 9, 8),
      ),
      LostFoundItem(
        id: 3,
        name: 'Blue Backpack',
        properties:
            'Navy blue backpack with laptop compartment, Dell logo on front pocket.',
        color: 'Navy Blue',
        location: 'G Block Cafeteria',
        imageUrl:
            'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
        date: DateTime(2025, 9, 7),
      ),
      LostFoundItem(
        id: 4,
        name: 'Scientific Calculator',
        properties:
            'Casio FX-991ES Plus scientific calculator, black color with missing battery cover.',
        color: 'Black',
        location: 'Exam Hall A',
        imageUrl:
            'https://images.unsplash.com/photo-1611125832047-1d7ad1e8e48f?w=400',
        date: DateTime(2025, 9, 6),
      ),
      LostFoundItem(
        id: 5,
        name: 'Wireless Earbuds',
        properties:
            'White Apple AirPods Pro in charging case, left earbud has slight scratch.',
        color: 'White',
        location: 'Sports Complex',
        imageUrl:
            'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=400',
        date: DateTime(2025, 9, 5),
      ),
      LostFoundItem(
        id: 6,
        name: 'Laptop Charger',
        properties:
            'Dell 65W laptop charger, black color with blue tip connector.',
        color: 'Black',
        location: 'Library Reading Room',
        imageUrl:
            'https://images.unsplash.com/photo-1583863788434-e58a36330cf0?w=400',
        date: DateTime(2025, 9, 4),
      ),
      LostFoundItem(
        id: 7,
        name: 'Reading Glasses',
        properties:
            'Black frame reading glasses with anti-glare coating, Ray-Ban brand.',
        color: 'Black',
        location: 'Lecture Hall 5',
        imageUrl:
            'https://images.unsplash.com/photo-1574258495973-f010dfbb5371?w=400',
        date: DateTime(2025, 9, 3),
      ),
    ];
    
    return mockItems;
  }
}