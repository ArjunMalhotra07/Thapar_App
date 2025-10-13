import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/date_time_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/room-selection-grid.dart';

class RoomSelectionScreen extends StatelessWidget {
  const RoomSelectionScreen({super.key});

  void _onRoomSelected(BuildContext context, Room room) {
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
            BlocBuilder<VenueBookingBloc, VenueBookingState>(
              builder: (context, state) {
                return state.maybeMap(
                  venuesFetched: (state) {
                    final selectedVenue = state.venues.firstWhere(
                      (venue) => venue.venueId == state.venueID,
                      orElse: () =>
                          const Venue(venueId: null, name: null, rooms: []),
                    );
                    return Text(
                      selectedVenue.name ?? '',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: AppFonts.gilroy,
                      ),
                    );
                  },
                  orElse: () {
                    return Container();
                  },
                );
              },
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
                  //! Date
                  CurrentDateTime(),
                  //! divider
                  AppDivider(),
                  //! Room selection grid
                  Expanded(
                    child: BlocBuilder<VenueBookingBloc, VenueBookingState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          venuesFetched: (state) {
                            final selectedVenue = state.venues.firstWhere(
                              (venue) => venue.venueId == state.venueID,
                              orElse: () => const Venue(
                                venueId: null,
                                name: null,
                                rooms: [],
                              ),
                            );

                            if (state.rooms.isEmpty) {
                              return const Center(
                                child: Text(
                                  'No rooms available for this venue',
                                ),
                              );
                            }

                            return Column(
                              children: [
                                RoomSelectionGrid(
                                  rooms: state.rooms,
                                  onRoomSelected: (room) =>
                                      _onRoomSelected(context, room),
                                ), // Bottom navigation button
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Row(
                                    children: [
                                      RoomVenueText(
                                        state: state,
                                        selectedVenue: selectedVenue,
                                      ),
                                      const SizedBox(width: 16),
                                      SelectTimeSlotButton(
                                        state: state,
                                        selectedVenue: selectedVenue,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          orElse: () =>
                              const Center(child: CircularProgressIndicator()),
                        );
                      },
                    ),
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

class RoomVenueText extends StatelessWidget {
  final dynamic state;
  final Venue selectedVenue;

  const RoomVenueText({
    super.key,
    required this.state,
    required this.selectedVenue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            state.roomID != null
                ? state.rooms
                          .firstWhere(
                            (room) => room.roomId == state.roomID,
                            orElse: () => const Room(
                              roomId: null,
                              name: null,
                              capacity: null,
                              bookings: [],
                            ),
                          )
                          .name ??
                      ''
                : '',
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
    );
  }
}

class SelectTimeSlotButton extends StatelessWidget {
  final dynamic state;
  final Venue selectedVenue;

  const SelectTimeSlotButton({
    super.key,
    required this.state,
    required this.selectedVenue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: state.roomID != null
          ? () {
              final selectedRoom = state.rooms.firstWhere(
                (room) => room.roomId == state.roomID,
              );
              context.push(
                AppRoute.timeSlot,
                extra: {
                  'venueName': selectedVenue.name!,
                  'roomName': selectedRoom.name!,
                  'venueId': selectedVenue.venueId!,
                  'roomId': selectedRoom.roomId!,
                  'bookings': selectedRoom.bookings ?? [],
                },
              );
            }
          : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4F6BF5),
        disabledBackgroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
    );
  }
}
