import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/booking_status_sheet.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/date_time_widget.dart';

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
                            
                            if (rooms.isEmpty) {
                              return const Center(
                                child: Text('No rooms available for this venue'),
                              );
                            }
                            
                            return Column(
                              children: [
                                // Room grid
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Select Room Number',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.venueBookingTheme,
                                            fontFamily: AppFonts.gilroy,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Expanded(
                                          child: GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 12,
                                              mainAxisSpacing: 12,
                                              childAspectRatio: 2.2,
                                            ),
                                            itemCount: rooms.length,
                                            itemBuilder: (context, index) {
                                              final room = rooms[index];
                                              final isSelected = roomID == room.roomId;
                                              return GestureDetector(
                                                onTap: () => _onRoomSelected(context, room),
                                                child: Container(
                                                  padding: const EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: isSelected
                                                        ? const Color(0xFF4F6BF5)
                                                        : Colors.white,
                                                    border: Border.all(
                                                      color: isSelected
                                                          ? const Color(0xFF4F6BF5)
                                                          : const Color(0xFFE0E0E0),
                                                      width: 1,
                                                    ),
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        room.name ?? '',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: isSelected
                                                              ? Colors.white
                                                              : AppColor.venueBookingTheme,
                                                          fontFamily: AppFonts.gilroy,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        'Capacity: ${room.capacity}',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w400,
                                                          color: isSelected
                                                              ? Colors.white70
                                                              : const Color(0xFF666666),
                                                          fontFamily: AppFonts.gilroy,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Bottom navigation button
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              roomID != null
                                                  ? rooms.firstWhere(
                                                      (room) => room.roomId == roomID,
                                                      orElse: () => const Room(
                                                        roomId: null,
                                                        name: null,
                                                        capacity: null,
                                                        bookings: [],
                                                      ),
                                                    ).name ?? ''
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
                                      ),
                                      const SizedBox(width: 16),
                                      ElevatedButton(
                                        onPressed: roomID != null
                                            ? () {
                                                final selectedRoom = rooms.firstWhere(
                                                  (room) => room.roomId == roomID,
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
                                ),
                              ],
                            );
                          },
                          orElse: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //! Booking status sheet
          const BookingStatusSheet(),
        ],
      ),
    );
  }
}
