import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';

part 'location_response.freezed.dart';
part 'location_response.g.dart';

@freezed
abstract class LocationsResponse with _$LocationsResponse {
  const factory LocationsResponse({
    required List<Location> locations,
    required int count, required int limit,
  }) = _LocationsResponse;
  
  factory LocationsResponse.fromJson(Map<String, dynamic> json) => _$LocationsResponseFromJson(json);
}
