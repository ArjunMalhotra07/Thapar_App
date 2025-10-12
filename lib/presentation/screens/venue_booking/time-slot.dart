import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/date_time_widget.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/time_slot_selector.dart';
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
  Text formatText(String txt, bool bold) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: bold ? FontWeight.w800 : FontWeight.w400,
        color: const Color(0xFF333333),
        fontFamily: AppFonts.gilroy,
      ),
      textAlign: TextAlign.center,
    );
  }

  void showCustomSnackbar(String message, ContentType contentType) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: contentType == ContentType.success
            ? 'Success!'
            : contentType == ContentType.warning
            ? 'Warning!'
            : 'Error!',
        message: message,
        contentType: contentType,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void _showBookingConfirmationDialog() {
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
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  contentPadding: const EdgeInsets.all(24),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      formatText('You are booking time slot for', false),
                      formatText(selectedSlot['label'], true),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'for Room ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF333333),
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            TextSpan(
                              text: widget.roomName,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF333333),
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      formatText(widget.venueName, true),
                      formatText(
                        'on ${DateTimeUtils.getFormattedDate()}',
                        false,
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              color: Color(0xFF4F6BF5),
                              width: 1.5,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF4F6BF5),
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            _handleBooking();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4F6BF5),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Confirm Booking',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        }
      },
      orElse: () {},
    );
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
            final startHour = int.parse(
              selectedSlot['startTime'].split(':')[0],
            );
            final endHour = int.parse(selectedSlot['endTime'].split(':')[0]);
            final startTimeFormatted = DateTimeUtils.getIsoFormattedDateTime(
              hour: startHour,
              date: now,
            );
            final endTimeFormatted = DateTimeUtils.getIsoFormattedDateTime(
              hour: endHour,
              date: now,
            );
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
              showCustomSnackbar(
                message ?? 'Booking confirmed successfully!',
                ContentType.success,
              );
              // Pop back to venue selection after short delay
              Future.delayed(Duration(milliseconds: 500), () {
                Navigator.of(context).pop(); // Go back to room selection
                Navigator.of(context).pop(); // Go back to venue selection
              });
            },
            failure: (message) {
              final errorMessage = VenueBookingUtils.extractErrorMessage(
                message,
              );
              showCustomSnackbar(errorMessage, ContentType.failure);
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
                    CurrentDateTime(),
                    //! Divider
                    AppDivider(),
                    const SizedBox(height: 20),
                    //! Button : change venue or room
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
                    //! Grid : Time selector
                    TimeSlotSelector(bookings: widget.bookings),
                    //! Bottommost line
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          //! Venue/Room name
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
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          //! book your slot button
                          BlocBuilder<VenueBookingBloc, VenueBookingState>(
                            builder: (context, state) {
                              final isLoading = state.maybeWhen(
                                bookingInProgress: (venues, rooms, venueID, roomID, timeSlotID) => true,
                                orElse: () => false,
                              );
                              final hasSelectedTimeSlot = state.maybeWhen(
                                venuesFetched: (_, __, ___, ____, timeSlotID) =>
                                    timeSlotID != null,
                                bookingInProgress: (_, __, ___, ____, timeSlotID) =>
                                    timeSlotID != null,
                                orElse: () => false,
                              );
                              
                              if (isLoading) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF4F6BF5),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        'Booking...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontFamily: AppFonts.gilroy,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              
                              return ElevatedButton(
                                onPressed: hasSelectedTimeSlot
                                    ? _showBookingConfirmationDialog
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
                                  'Book Your Slot',
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
