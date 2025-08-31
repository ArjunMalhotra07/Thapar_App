import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thaparapp/data/model/location_service/location_response/location_response.dart';
import 'package:thaparapp/data/provider/locations/locations_abs.dart';

class LocationsApiProvider implements LocationsProvider {
  final String baseUrl;
  final Map<String, String> headers;

  LocationsApiProvider({
    required this.baseUrl,
    this.headers = const {'Content-Type': 'application/json'},
  });

  @override
  Future<LocationsResponse> fetchLocations() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/locations'),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return LocationsResponse.fromJson(data);
      } else {
        throw Exception('Failed to fetch locations: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }
}