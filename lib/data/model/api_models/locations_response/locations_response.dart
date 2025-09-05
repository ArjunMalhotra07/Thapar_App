import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';

part 'locations_response.freezed.dart';
part 'locations_response.g.dart';

@freezed
abstract class LocationsApiResponse with _$LocationsApiResponse {
  const factory LocationsApiResponse({
    required bool success,
    required int count,
    required List<Location> data,
    String? error,
    String? details,
  }) = _LocationsApiResponse;
  
  factory LocationsApiResponse.fromJson(Map<String, dynamic> json) => 
      _$LocationsApiResponseFromJson(json);
}