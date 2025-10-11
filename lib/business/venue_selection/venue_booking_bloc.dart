import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'venue_booking_event.dart';
part 'venue_booking_state.dart';
part 'venue_booking_bloc.freezed.dart';

class VenueBookingBloc extends Bloc<VenueBookingEvent, VenueBookingState> {
  VenueBookingBloc() : super(_Initial()) {
    on<VenueBookingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
