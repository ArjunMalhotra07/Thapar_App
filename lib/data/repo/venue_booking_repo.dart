import 'package:thaparapp/data/model/api_models/venue_booking_response/venue_booking_response.dart';
import 'package:thaparapp/data/provider/venue-booking/venue_booking_abs.dart';

class VenueBookingRepo {
  final VenueBookingProvider venueBookingProvider;
  VenueBookingRepo({required this.venueBookingProvider});
  Future<VenueBookingResponse> fetchVenues(String date) async {
    return await venueBookingProvider.fetchVenues(date);
  }

  Future<VenueBookingResponse> bookVenue(Map<String, dynamic> body) async {
    return await venueBookingProvider.bookVenue(body);
  }
}
