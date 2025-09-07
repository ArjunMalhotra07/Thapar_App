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
        id: 1,
        name: 'Dashmesh Audi',
        description: 'Main auditorium for events and conferences',
        category: "",
        latitude: 30.3535,
        longitude: 76.3654,
        imageUrl: "",
        createdAt: DateTime.now(),
        features: ['Hiring', 'Event', 'Computer Science'],
      ),
    ];

    return LocationsResponse(
      locations: mockLocations,
      limit: 50,
      count: mockLocations.length,
    );
  }
}
