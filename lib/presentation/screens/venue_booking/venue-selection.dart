import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/booking_status_sheet.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/date_time_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/venue_room_selector.dart';
import 'package:thaparapp/utils/date_time_utils.dart';

class VenueSelectionScreen extends StatefulWidget {
  const VenueSelectionScreen({super.key});

  @override
  State<VenueSelectionScreen> createState() => _VenueSelectionScreenState();
}

class _VenueSelectionScreenState extends State<VenueSelectionScreen> {
  @override
  void initState() {
    super.initState();
    final currentState = context.read<VenueBookingBloc>().state;
    currentState.maybeWhen(
      venuesFetched: (venues, rooms, venueID, roomID, timeSlotID, _, _) {},
      orElse: () {
        context.read<VenueBookingBloc>().add(
          VenueBookingEvent.fetchVenues(
            date: DateTimeUtils.getApiFormattedDate(),
          ),
        );
      },
    );
  }

  void _onVenueSelected(Venue venue) {
    // Check if there's a pending booking - if so, don't allow navigation
    final currentState = context.read<VenueBookingBloc>().state;
    final hasPendingBooking = currentState.maybeMap(
      venuesFetched: (state) => state.status != null && state.status != BookingStatus.none,
      orElse: () => false,
    );
    
    if (hasPendingBooking) {
      // Don't navigate or select if there's a pending booking
      return;
    }
    
    context.read<VenueBookingBloc>().add(
      VenueBookingEvent.selectedVenue(venueID: venue.venueId!),
    );
    // Navigate to room selection
    context.push('/room-selection');
  }

  void _onRoomSelected(Room room) {
    context.read<VenueBookingBloc>().add(
      VenueBookingEvent.selectedRoom(roomID: room.roomId!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.venueBookingTheme,
      appBar: AppBar(
        backgroundColor: AppColor.venueBookingTheme,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Venue Booking',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: AppFonts.gilroy,
              ),
            ),
            Text(
              'Set time and secure your spot.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
                fontFamily: AppFonts.gilroy,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                //! Date
                CurrentDateTime(),
                //! divider
                AppDivider(),
                //! Select your venue grid
                VenueRoomSelector(
                  onVenueSelected: _onVenueSelected,
                  onRoomSelected: _onRoomSelected,
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: //! Booking status sheet
                const BookingStatusSheet(),
          ),
        ],
      ),
    );
  }
}
