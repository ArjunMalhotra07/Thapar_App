import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
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
      venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {},
      orElse: () {
        context.read<VenueBookingBloc>().add(
          VenueBookingEvent.fetchVenues(date: DateTimeUtils.getApiFormattedDate()),
        );
      },
    );
  }

  void _onVenueSelected(Venue venue) {
    context.read<VenueBookingBloc>().add(
      VenueBookingEvent.selectedVenue(venueID: venue.venueId!),
    );
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  //! Date and time
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          DateTimeUtils.getFormattedDate(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.venueBookingTheme,
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          DateTimeUtils.getFormattedTime(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF666666),
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //! Divider
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: const Divider(height: 1),
                  ),
                  //! Select your venue and room grid
                  VenueRoomSelector(
                    onVenueSelected: _onVenueSelected,
                    onRoomSelected: _onRoomSelected,
                  ),
                  //! select time slot row
                  BlocBuilder<VenueBookingBloc, VenueBookingState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {
                          final selectedVenue = venues.firstWhere(
                            (venue) => venue.venueId == venueID,
                            orElse: () => const Venue(
                              venueId: null,
                              name: null,
                              rooms: [],
                            ),
                          );
                          final selectedRoom = rooms.firstWhere(
                            (room) => room.roomId == roomID,
                            orElse: () => const Room(
                              roomId: null,
                              name: null,
                              capacity: null,
                              bookings: [],
                            ),
                          );

                          return Container(
                                padding: const EdgeInsets.all(24),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            selectedRoom.name ?? '',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.venueBookingTheme,
                                              fontFamily: AppFonts.gilroy,
                                            ),
                                          ),
                                          Text(
                                            selectedVenue.name ?? '',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xFF666666),
                                              fontFamily: AppFonts.gilroy,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    ElevatedButton(
                                  onPressed: venueID != null && roomID != null
                                          ? () {
                                              context.push(
                                                AppRoute.timeSlot,
                                                extra: {
                                                  'venueName': selectedVenue.name!,
                                                  'roomName': selectedRoom.name!,
                                                  'venueId': selectedVenue.venueId!,
                                                  'roomId': selectedRoom.roomId!,
                                              'bookings':
                                                  selectedRoom.bookings ?? [],
                                                },
                                              );
                                            }
                                          : null,
                                      style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF4F6BF5),
                                        disabledBackgroundColor: Colors.grey,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 16,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: Text(
                                        'Select Time Slot',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontFamily: AppFonts.gilroy,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          );
                        },
                        orElse: () => Container(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
