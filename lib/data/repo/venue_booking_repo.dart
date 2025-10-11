import 'package:thaparapp/data/model/api_models/venue_booking_response/venue_booking_response.dart';
import 'package:thaparapp/data/provider/venue-booking/venue_booking_abs.dart';

class VenueBookingRepo {
  final VenueBookingProvider venueBookingProvider;
  VenueBookingRepo({required this.venueBookingProvider});
  Future<VenueBookingResponse> fetchVenues() async {
    return VenueBookingResponse(success: "hey", count: 5, venues: []);
  }

  Future<VenueBookingResponse> bookVenue(Map<String, dynamic> body) async {
    return await venueBookingProvider.bookVenue(body);
  }
}
