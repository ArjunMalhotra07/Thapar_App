import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/data/model/location_service/location_response/location_response.dart';
import 'package:thaparapp/data/provider/locations/locations_abs.dart';

class LocationsLocalProvider implements LocationsProvider {
  @override
  Future<LocationsResponse> fetchLocations() async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay

    // Mock data
    final mockLocations = [
      Location(
        id: '1',
        name: 'Dashmesh Audi',
        description: 'Main auditorium for events and conferences',
        tags: ['Hiring', 'Event', 'Computer Science'],
        lat: 30.3535,
        long: 76.3654,
        category: 'Event Space',
        imageUrl: 'https://example.com/dashmesh.jpg',
        isActive: true,
      ),
      Location(
        id: '2',
        name: 'Main Ground',
        description: 'Large ground for sports and outdoor events',
        tags: ['Sports', 'Event', 'Concerts'],
        lat: 30.3545,
        long: 76.3664,
        category: 'Sports',
        imageUrl: 'https://example.com/ground.jpg',
        isActive: true,
      ),
      Location(
        id: '3',
        name: 'Library',
        description: 'Central library with study areas and resources',
        tags: ['Study', 'Research', 'Books'],
        lat: 30.3525,
        long: 76.3644,
        category: 'Academic',
        imageUrl: 'https://example.com/library.jpg',
        isActive: true,
      ),
      Location(
        id: '4',
        name: 'Canteen Block',
        description: 'Food court and dining area',
        tags: ['Food', 'Dining', 'Social'],
        lat: 30.3540,
        long: 76.3650,
        category: 'Dining',
        imageUrl: 'https://example.com/canteen.jpg',
        isActive: true,
      ),
      Location(
        id: '5',
        name: 'Computer Lab A',
        description: 'Advanced computer laboratory with latest equipment',
        tags: ['Computer Science', 'Lab', 'Technology'],
        lat: 30.3530,
        long: 76.3660,
        category: 'Academic',
        imageUrl: 'https://example.com/lab.jpg',
        isActive: true,
      ),
    ];

    return LocationsResponse(
      locations: mockLocations,
      success: true,
      message: 'Locations fetched successfully',
      total: mockLocations.length,
      page: 1,
      limit: 50,
    );
  }
}
