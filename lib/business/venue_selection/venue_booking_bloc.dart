import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/api_models/venue_booking_response/venue_booking_response.dart';
import 'package:thaparapp/data/repo/venue_booking_repo.dart';

part 'venue_booking_event.dart';
part 'venue_booking_state.dart';
part 'venue_booking_bloc.freezed.dart';

class VenueBookingBloc extends Bloc<VenueBookingEvent, VenueBookingState> {
  final VenueBookingRepo venueBookingRepo;
  VenueBookingBloc({required this.venueBookingRepo}) : super(_Initial()) {
    on<_FetchVenues>(fetchVenues);
    on<_BookVenue>(bookVenue);
  }

  void fetchVenues(event, emit) async {
    try {
      emit(const VenueBookingState.loading());
      await Future.delayed(Duration(milliseconds: 1400));
      final venues = await venueBookingRepo.fetchVenues();
      emit(VenueBookingState.success(response: venues));
    } catch (e) {
      emit(VenueBookingState.failure(message: e.toString()));
    }
  }

  void bookVenue(event, emit) async {
    try {
      emit(const VenueBookingState.loading());
      Map<String, dynamic> body = {
        "room_id": "xyz",
        "start_time": event.startTime,
        "end_time": event.endTime,
      };
      final res = await venueBookingRepo.bookVenue(body);
      emit(VenueBookingState.success(response: res));
    } catch (e) {
      emit(VenueBookingState.failure(message: e.toString()));
    }
  }
}
