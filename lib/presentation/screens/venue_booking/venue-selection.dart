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
  String? selectedVenueId;
  String? selectedVenueName;
  String? selectedRoomId;
  String? selectedRoomName;
  List<Venue> venues = [];
  List<Room> selectedVenueRooms = [];

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
    context.read<VenueBookingBloc>().add(
      VenueBookingEvent.fetchVenues(date: getFormattedDate(DateTime.now())),
    );
  }

  void _updateSelectedVenueRooms() {
    if (selectedVenueId == null || venues.isEmpty) {
      selectedVenueRooms = [];
      return;
    }
    final venue = venues.firstWhere(
      (v) => v.venueId == selectedVenueId,
      orElse: () => Venue(venueId: null, name: null, rooms: []),
    );
    selectedVenueRooms = venue.rooms ?? [];
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: const Divider(height: 1),
                  ),

                  Expanded(
                    child: BlocConsumer<VenueBookingBloc, VenueBookingState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          failure: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  message ?? 'An error occurred',
                                  style: TextStyle(fontFamily: AppFonts.gilroy),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          initial: () =>
                              const Center(child: Text('Loading venues...')),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          venuesFetched: (response) {
                            if (response?.venues != null) {
                              venues = response!.venues!;
                              _updateSelectedVenueRooms();
                            }

                            if (venues.isEmpty) {
                              return const Center(
                                child: Text('No venues available'),
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
                                    children: venues.map((venue) {
                                      final isSelected =
                                          selectedVenueId == venue.venueId;
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedVenueId = venue.venueId;
                                            selectedVenueName = venue.name;
                                            selectedRoomId = null;
                                            selectedRoomName = null;
                                            _updateSelectedVenueRooms();
                                          });
                                        },
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
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
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

                                  if (selectedVenueId != null &&
                                      selectedVenueRooms.isNotEmpty) ...[
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
                                      children: selectedVenueRooms.map((room) {
                                        final isSelected =
                                            selectedRoomId == room.roomId;
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedRoomId = room.roomId;
                                              selectedRoomName = room.name;
                                            });
                                          },
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
                                              borderRadius:
                                                  BorderRadius.circular(8),
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
                                                        : AppColor
                                                              .venueBookingTheme,
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
                                                        : const Color(
                                                            0xFF666666,
                                                          ),
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
                                const Icon(
                                  Icons.error_outline,
                                  size: 64,
                                  color: Colors.red,
                                ),
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
                                    style: TextStyle(
                                      fontFamily: AppFonts.gilroy,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          bookingInProgress: () =>
                              const Center(child: CircularProgressIndicator()),
                          bookingSuccess: (message) => Center(
                            child: Text(message ?? 'Booking successful'),
                          ),
                        );
                      },
                    ),
                  ),

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
                                selectedRoomName ?? '',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.venueBookingTheme,
                                  fontFamily: AppFonts.gilroy,
                                ),
                              ),
                              Text(
                                selectedVenueName ?? 'No Venue Selected',
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
                          onPressed:
                              selectedVenueId != null && selectedRoomId != null
                              ? () {
                                  final selectedVenue = venues.firstWhere(
                                    (v) => v.venueId == selectedVenueId,
                                  );
                                  final selectedRoom = selectedVenue.rooms!
                                      .firstWhere(
                                        (r) => r.roomId == selectedRoomId,
                                      );
                                  
                                  context.push(
                                    AppRoute.timeSlot,
                                    extra: {
                                      'venueName': selectedVenueName!,
                                      'roomName': selectedRoomName!,
                                      'venueId': selectedVenueId!,
                                      'roomId': selectedRoomId!,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
