import 'package:thaparapp/data/model/api_models/venue_booking_response/venue_booking_response.dart';

abstract class VenueBookingProvider {
  Future<VenueBookingResponse> fetchVenues();
  Future<VenueBookingResponse> bookVenue();
}
