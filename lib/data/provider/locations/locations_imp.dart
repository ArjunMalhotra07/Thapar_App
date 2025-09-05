import 'package:thaparapp/data/model/api_models/locations_response/locations_response.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/data/model/location_service/location_response/location_response.dart';
import 'package:thaparapp/data/provider/locations/locations_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class LocationsApiProvider implements LocationsProvider {
  final BaseApiService _service;

  LocationsApiProvider({required BaseApiService service}) : _service = service;

  @override
  Future<LocationsResponse> fetchLocations() async {
    try {
      final response = await _service.getAPI(
        url: AppURL.locations,
        queryParams: null,
        bearerToken: null,
      );
      
      final apiResponse = LocationsApiResponse.fromJson(response);
      
      if (apiResponse.success) {
        return LocationsResponse(
          locations: apiResponse.data,
          count: apiResponse.count,
          limit: apiResponse.count,
        );
      } else {
        throw Exception(apiResponse.error ?? 'Failed to fetch locations');
      }
    } catch (e) {
      rethrow;
    }
  }
}