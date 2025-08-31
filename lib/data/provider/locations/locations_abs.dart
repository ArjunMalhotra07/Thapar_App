import 'package:thaparapp/data/model/location_service/location_response/location_response.dart';

abstract class LocationsProvider {
  Future<LocationsResponse> fetchLocations();
}