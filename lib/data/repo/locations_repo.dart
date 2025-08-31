import 'package:thaparapp/data/model/location_service/location_response/location_response.dart';
import 'package:thaparapp/data/provider/locations/locations_abs.dart';

class LocationsRepo {
  final LocationsProvider locationsProvider;
  
  LocationsRepo({required this.locationsProvider});

  Future<LocationsResponse> fetchLocations() async {
    return await locationsProvider.fetchLocations();
  }
}