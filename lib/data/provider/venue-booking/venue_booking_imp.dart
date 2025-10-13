import 'package:thaparapp/data/model/api_models/venue_booking_response/venue_booking_response.dart';
import 'package:thaparapp/data/provider/venue-booking/venue_booking_abs.dart';
import 'package:thaparapp/network/base_api_service.dart';
import 'package:thaparapp/presentation/constants/urls.dart';

class VenueBookingImp extends VenueBookingProvider {
  final BaseApiService _service;
  VenueBookingImp({required BaseApiService service}) : _service = service;
  @override
  Future<VenueBookingResponse> fetchVenues(String date) async {
    try {
      final res = await _service.getAPI(
        url: AppURL.venue,
        bearerToken: '',
        queryParams: {'date': date},
      );
      final venueResponse = VenueBookingResponse.fromJson(res);
      return venueResponse;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VenueBookingResponse> bookVenue(Map<String, dynamic> body) async {
    try {
      final res = await _service.postAPI(
        url: AppURL.venue,
        body: body,
        queryParams: null,
      );
      final venueResponse = VenueBookingResponse.fromJson(res);
      return venueResponse;
    } catch (e) {
      rethrow;
    }
  }
}
