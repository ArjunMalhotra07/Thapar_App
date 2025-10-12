import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/routes.dart';

class VenueSelectionScreen extends StatefulWidget {
  const VenueSelectionScreen({super.key});

  @override
  State<VenueSelectionScreen> createState() => _VenueSelectionScreenState();
}

class _VenueSelectionScreenState extends State<VenueSelectionScreen> {
  String get formattedDate {
    final now = DateTime.now();
    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${now.day}${_getDaySuffix(now.day)} ${months[now.month - 1]}, ${now.year}';
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  String get formattedTime {
    final now = DateTime.now();
    final hour = now.hour > 12
        ? now.hour - 12
        : (now.hour == 0 ? 12 : now.hour);
    final minute = now.minute.toString().padLeft(2, '0');
    final period = now.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }

  String getFormattedDate(DateTime now) {
    return DateFormat('yyyy-MM-dd').format(now);
  }

  @override
  void initState() {
    super.initState();
    final currentState = context.read<VenueBookingBloc>().state;
    currentState.maybeWhen(
      venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {},
      orElse: () {
        context.read<VenueBookingBloc>().add(
          VenueBookingEvent.fetchVenues(date: getFormattedDate(DateTime.now())),
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
                          formattedDate,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.venueBookingTheme,
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          formattedTime,
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

class VenueRoomSelector extends StatelessWidget {
  final Function(Venue) onVenueSelected;
  final Function(Room) onRoomSelected;

  const VenueRoomSelector({
    super.key,
    required this.onVenueSelected,
    required this.onRoomSelected,
  });

  String getFormattedDate(DateTime now) {
    return DateFormat('yyyy-MM-dd').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<VenueBookingBloc, VenueBookingState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return Container();
            },
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
            venuesFetched: (state) {
              if (state.venues.isEmpty) {
                return Center(
                  child: Text(
                    'No venues available',
                    style: TextStyle(fontFamily: AppFonts.gilroy),
                  ),
                );
              }

              return SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Venue',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.venueBookingTheme,
                        fontFamily: AppFonts.gilroy,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: state.venues.map((venue) {
                        final isSelected = state.venueID == venue.venueId;
                        return GestureDetector(
                          onTap: () => onVenueSelected(venue),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
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
                            child: Text(
                              venue.name ?? '',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: isSelected
                                    ? Colors.white
                                    : AppColor.venueBookingTheme,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    if (state.rooms.isNotEmpty) ...[
                      const SizedBox(height: 32),
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
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: state.rooms.map((room) {
                          final isSelected = state.roomID == room.roomId;
                          return GestureDetector(
                            onTap: () => onRoomSelected(room),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
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
                                mainAxisSize: MainAxisSize.min,
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
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ],
                ),
              );
            },
            failure: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    'App is under maintenance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                  Text(
                    'Please try again later!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<VenueBookingBloc>().add(
                        VenueBookingEvent.fetchVenues(
                          date: getFormattedDate(DateTime.now()),
                        ),
                      );
                    },
                    child: Text(
                      'Retry',
                      style: TextStyle(fontFamily: AppFonts.gilroy),
                    ),
                  ),
                ],
              ),
            ),
            bookingInProgress: (state) =>
                const Center(child: CircularProgressIndicator()),
            bookingSuccess: (state) => Center(
              child: Text(
                state.message ?? "Booking done successfully",
                style: TextStyle(fontFamily: AppFonts.gilroy),
              ),
            ),
          );
        },
      ),
    );
  }
}
