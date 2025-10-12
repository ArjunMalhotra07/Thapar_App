import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/date_time_utils.dart';
import 'package:thaparapp/utils/venue_booking_utils.dart';

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
            final startHour = int.parse(
              selectedSlot['startTime'].split(':')[0],
            );
            final endHour = int.parse(selectedSlot['endTime'].split(':')[0]);

            final startDateTime = DateTime(
              now.year,
              now.month,
              now.day,
              startHour,
              0,
            );
            final endDateTime = DateTime(
              now.year,
              now.month,
              now.day,
              endHour,
              0,
            );

            final startTimeFormatted = DateTimeUtils.getIsoFormattedDateTime(
              hour: startHour,
              date: now,
            );
            final endTimeFormatted = DateTimeUtils.getIsoFormattedDateTime(
              hour: endHour,
              date: now,
            );

            print('RoomID: ${widget.roomId}');
            print('Start Time: $startTimeFormatted');
            print('End Time: $endTimeFormatted');

            context.read<VenueBookingBloc>().add(
              VenueBookingEvent.bookVenue(
                venueId: widget.venueId,
                roomId: widget.roomId,
                startTime: startTimeFormatted,
                endTime: endTimeFormatted,
                date: DateTimeUtils.getApiFormattedDate(),
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
                  content: Text(
                    message ?? 'Booking confirmed!',
                    style: TextStyle(fontFamily: AppFonts.gilroy),
                  ),
                  backgroundColor: Colors.green,
                  duration: const Duration(seconds: 3),
                ),
              );
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            failure: (message) {
              final errorMessage = VenueBookingUtils.extractErrorMessage(message);

              ScaffoldMessenger.of(context)
                ..clearSnackBars() // Clear any existing snackbars
                ..showSnackBar(
                  SnackBar(
                    content: Text(
                      errorMessage,
                      style: TextStyle(fontFamily: AppFonts.gilroy),
                    ),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 4),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      textColor: Colors.white,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
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
                    //! Date
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
                    //! divider
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: const Divider(height: 1),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    const SizedBox(height: 20),
                    TimeSlotSelector(bookings: widget.bookings),
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
                                BlocBuilder<
                                  VenueBookingBloc,
                                  VenueBookingState
                                >(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      venuesFetched:
                                          (
                                            venues,
                                            rooms,
                                            venueID,
                                            roomID,
                                            timeSlotID,
                                          ) {
                                            if (timeSlotID != null) {
                                              final bloc = context
                                                  .read<VenueBookingBloc>();
                                              final selectedSlot = bloc
                                                  .timeSlots
                                                  .firstWhere(
                                                    (slot) =>
                                                        slot['id'] ==
                                                        timeSlotID,
                                                    orElse: () => {},
                                                  );
                                              if (selectedSlot.isNotEmpty) {
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      selectedSlot['label'] ??
                                                          '',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color(
                                                          0xFF4CAF50,
                                                        ),
                                                        fontFamily:
                                                            AppFonts.gilroy,
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
                                venuesFetched: (_, __, ___, ____, timeSlotID) =>
                                    timeSlotID != null,
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


class TimeSlotSelector extends StatelessWidget {
  final List<Booking> bookings;

  const TimeSlotSelector({super.key, required this.bookings});


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
                    final slotState = VenueBookingUtils.getSlotState(slot, bookings);
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
                          color: VenueBookingUtils.getSlotColor(slotState, isSelected),
                          border: Border.all(
                            color: VenueBookingUtils.getSlotBorderColor(slotState),
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
                              color: VenueBookingUtils.getSlotTextColor(slotState, isSelected),
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
                        const SizedBox(width: 24),
                        _buildLegendItem(
                          color: const Color(0xFFBDBDBD),
                          label: 'Expired Slot',
                        ),
                      ],
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
