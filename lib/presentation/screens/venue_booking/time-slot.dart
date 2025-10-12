import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class TimeSlotSelectionScreen extends StatefulWidget {
  final String venueName;
  final String roomName;
  final String venueId;
  final String roomId;
  final List<Booking> bookings;

  const TimeSlotSelectionScreen({
    super.key,
    required this.venueName,
    required this.roomName,
    required this.venueId,
    required this.roomId,
    required this.bookings,
  });

  @override
  State<TimeSlotSelectionScreen> createState() =>
      _TimeSlotSelectionScreenState();
}

class _TimeSlotSelectionScreenState extends State<TimeSlotSelectionScreen> {

  bool isSlotBooked(String startTime, String endTime) {
    for (final booking in widget.bookings) {
      if (booking.startTime == startTime && booking.endTime == endTime) {
        return true;
      }
    }
    return false;
  }

  Color getSlotColor(SlotState state, bool isSelected) {
    if (isSelected) {
      switch (state) {
        case SlotState.available:
          return const Color(0xFF4CAF50);
        case SlotState.booked:
          return const Color(0xFFF44336);
        case SlotState.expired:
          return const Color(0xFFBDBDBD);
      }
    }
    return Colors.white;
  }

  Color getSlotBorderColor(SlotState state) {
    switch (state) {
      case SlotState.available:
        return const Color(0xFF4CAF50);
      case SlotState.booked:
        return const Color(0xFFF44336);
      case SlotState.expired:
        return const Color(0xFFBDBDBD);
    }
  }

  Color getSlotTextColor(SlotState state, bool isSelected) {
    if (isSelected) {
      return Colors.white;
    }
    switch (state) {
      case SlotState.available:
        return const Color(0xFF4CAF50);
      case SlotState.booked:
        return const Color(0xFFF44336);
      case SlotState.expired:
        return const Color(0xFF9E9E9E);
    }
  }

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

  void _handleBooking() {
    final state = context.read<VenueBookingBloc>().state;
    state.maybeWhen(
      venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {
        if (timeSlotID != null) {
          final bloc = context.read<VenueBookingBloc>();
          final selectedSlot = bloc.timeSlots.firstWhere(
            (slot) => slot['id'] == timeSlotID,
            orElse: () => {},
          );
          
          if (selectedSlot.isNotEmpty) {
            final now = DateTime.now();
            final startHour = int.parse(selectedSlot['startTime'].split(':')[0]);
            final endHour = int.parse(selectedSlot['endTime'].split(':')[0]);
            
            final startDateTime = DateTime(now.year, now.month, now.day, startHour, 0);
            final endDateTime = DateTime(now.year, now.month, now.day, endHour, 0);
            
            final startTimeFormatted = startDateTime.toIso8601String() + 'Z';
            final endTimeFormatted = endDateTime.toIso8601String() + 'Z';
            
            print('RoomID: ${widget.roomId}');
            print('Start Time: $startTimeFormatted');
            print('End Time: $endTimeFormatted');
            
            context.read<VenueBookingBloc>().add(
              VenueBookingEvent.bookVenue(
                venueId: widget.venueId,
                roomId: widget.roomId,
                startTime: startTimeFormatted,
                endTime: endTimeFormatted,
                date: getFormattedDate(DateTime.now()),
              ),
            );
          }
        }
      },
      orElse: () {},
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
                fontSize: 12,
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
      body: BlocListener<VenueBookingBloc, VenueBookingState>(
        listener: (context, state) {
          state.maybeWhen(
            bookingSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message ?? 'Booking confirmed!'),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message ?? 'Booking failed'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        child: Column(
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

                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: GestureDetector(
                        onTap: () => GoRouter.of(context).pop(),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Change Venue or Room Number',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF666666),
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ),
                        ),
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
                                  widget.roomName,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.venueBookingTheme,
                                    fontFamily: AppFonts.gilroy,
                                  ),
                                ),
                                Text(
                                  widget.venueName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF666666),
                                    fontFamily: AppFonts.gilroy,
                                  ),
                                ),
                                BlocBuilder<VenueBookingBloc, VenueBookingState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {
                                        if (timeSlotID != null) {
                                          final bloc = context.read<VenueBookingBloc>();
                                          final selectedSlot = bloc.timeSlots.firstWhere(
                                            (slot) => slot['id'] == timeSlotID,
                                            orElse: () => {},
                                          );
                                          if (selectedSlot.isNotEmpty) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 4),
                                                Text(
                                                  selectedSlot['label'] ?? '',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(0xFF4CAF50),
                                                    fontFamily: AppFonts.gilroy,
                                                  ),
                                                ),
                                              ],
                                            );
                                          }
                                        }
                                        return const SizedBox.shrink();
                                      },
                                      orElse: () => const SizedBox.shrink(),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          BlocBuilder<VenueBookingBloc, VenueBookingState>(
                            builder: (context, state) {
                              final isLoading = state.maybeWhen(
                                bookingInProgress: () => true,
                                orElse: () => false,
                              );
                              final hasSelectedTimeSlot = state.maybeWhen(
                                venuesFetched: (_, __, ___, ____, timeSlotID) => timeSlotID != null,
                                orElse: () => false,
                              );
                              return ElevatedButton(
                                onPressed: hasSelectedTimeSlot && !isLoading
                                    ? _handleBooking
                                    : null,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4F6BF5),
                                  disabledBackgroundColor: const Color(
                                    0xFFE0E0E0,
                                  ),
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
                                  isLoading ? 'Booking...' : 'Book Your Slot',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: AppFonts.gilroy,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    TimeSlotSelector(bookings: widget.bookings),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SlotState { available, booked, expired }

class TimeSlotSelector extends StatelessWidget {
  final List<Booking> bookings;
  
  const TimeSlotSelector({super.key, required this.bookings});

  SlotState getSlotState(Map<String, dynamic> slot, List<Booking> bookings) {
    if (isSlotExpired(slot['hour'])) {
      return SlotState.expired;
    }
    if (isSlotBooked(slot['startTime'], slot['endTime'], bookings)) {
      return SlotState.booked;
    }
    return SlotState.available;
  }

  bool isSlotExpired(int hour) {
    final now = DateTime.now();
    return hour <= now.hour;
  }
  
  bool isSlotBooked(String startTime, String endTime, List<Booking> bookings) {
    for (final booking in bookings) {
      if (booking.startTime == startTime && booking.endTime == endTime) {
        return true;
      }
    }
    return false;
  }
  
  Color getSlotColor(SlotState state, bool isSelected) {
    if (isSelected) {
      switch (state) {
        case SlotState.available:
          return const Color(0xFF4CAF50);
        case SlotState.booked:
          return const Color(0xFFF44336);
        case SlotState.expired:
          return const Color(0xFFBDBDBD);
      }
    }
    return Colors.white;
  }

  Color getSlotBorderColor(SlotState state) {
    switch (state) {
      case SlotState.available:
        return const Color(0xFF4CAF50);
      case SlotState.booked:
        return const Color(0xFFF44336);
      case SlotState.expired:
        return const Color(0xFFBDBDBD);
    }
  }

  Color getSlotTextColor(SlotState state, bool isSelected) {
    if (isSelected) {
      return Colors.white;
    }
    switch (state) {
      case SlotState.available:
        return const Color(0xFF4CAF50);
      case SlotState.booked:
        return const Color(0xFFF44336);
      case SlotState.expired:
        return const Color(0xFF9E9E9E);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<VenueBookingBloc, VenueBookingState>(
        builder: (context, state) {
          final isBookingInProgress = state.maybeWhen(
            bookingInProgress: () => true,
            orElse: () => false,
          );
          
          if (isBookingInProgress) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 20),
                  Text(
                    'Processing your booking...',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.venueBookingTheme,
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Please wait for admin approval',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF666666),
                      fontFamily: AppFonts.gilroy,
                    ),
                  ),
                ],
              ),
            );
          }

          final bloc = context.read<VenueBookingBloc>();
          final currentTimeSlotID = state.maybeWhen(
            venuesFetched: (_, __, ___, ____, timeSlotID) => timeSlotID,
            orElse: () => null,
          );
          
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Select Time Slot',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.venueBookingTheme,
                    fontFamily: AppFonts.gilroy,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3,
                  ),
                  itemCount: bloc.timeSlots.length,
                  itemBuilder: (context, index) {
                    final slot = bloc.timeSlots[index];
                    final slotState = getSlotState(slot, bookings);
                    final isSelected = currentTimeSlotID == slot['id'];
                    final canSelect = slotState == SlotState.available;

                    return GestureDetector(
                      onTap: canSelect
                          ? () {
                              context.read<VenueBookingBloc>().add(
                                VenueBookingEvent.selectedTimeSlot(
                                  timeSlotID: slot['id'],
                                ),
                              );
                            }
                          : null,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: getSlotColor(slotState, isSelected),
                          border: Border.all(
                            color: getSlotBorderColor(slotState),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            slot['label'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: getSlotTextColor(slotState, isSelected),
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _buildLegendItem(
                          color: const Color(0xFF4CAF50),
                          label: 'Available Slot',
                        ),
                        const SizedBox(width: 24),
                        _buildLegendItem(
                          color: const Color(0xFFF44336),
                          label: 'Booked Slot',
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _buildLegendItem(
                      color: const Color(0xFFBDBDBD),
                      label: 'Expired Slot',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLegendItem({required Color color, required String label}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF666666),
            fontFamily: AppFonts.gilroy,
          ),
        ),
      ],
    );
  }
}
