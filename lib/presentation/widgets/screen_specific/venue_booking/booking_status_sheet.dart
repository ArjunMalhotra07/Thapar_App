import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/date_time_utils.dart';
import 'package:thaparapp/utils/venue_booking_utils.dart';

class BookingStatusSheet extends StatelessWidget {
  const BookingStatusSheet({super.key});

  // Expose static method for external use (one booking per day check)
  static bool hasUserBookingToday(List<Venue> venues, String? currentUserId) {
    return VenueBookingUtils.hasUserBookingToday(venues, currentUserId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        final currentUser = context.read<AuthBloc>().user;
        final currentUserId = currentUser?.userId;

        return BlocBuilder<VenueBookingBloc, VenueBookingState>(
          builder: (context, venueState) {
            return venueState.maybeWhen(
              bookingInProgress: (venues, rooms, venueID, roomID, timeSlotID) {
                if (venueID == null || roomID == null)
                  return const SizedBox.shrink();

                final venue = venues.firstWhere(
                  (v) => v.venueId == venueID,
                  orElse: () =>
                      const Venue(venueId: null, name: null, rooms: []),
                );

                final room = rooms.firstWhere(
                  (r) => r.roomId == roomID,
                  orElse: () => const Room(
                    roomId: null,
                    name: null,
                    capacity: null,
                    bookings: [],
                  ),
                );

                return Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4F6BF5),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Booking in Progress',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${room.name ?? ''} • ${venue.name ?? ''}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Pending',
                          style: TextStyle(
                            fontSize: 12,
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
              venuesFetched: (venues, rooms, venueID, roomID, timeSlotID) {
                // Check if current user has any upcoming bookings
                if (!VenueBookingUtils.hasAnyUserUpcomingBooking(venues, currentUserId)) {
                  return const SizedBox.shrink();
                }

                // Find the venue and room with user's booking using utils
                final bookingData = VenueBookingUtils.findUserUpcomingBooking(venues, currentUserId);
                
                if (bookingData == null) {
                  return const SizedBox.shrink();
                }
                
                final userVenue = bookingData['venue'] as Venue;
                final userRoom = bookingData['room'] as Room;
                final upcomingBooking = bookingData['booking'] as Booking;

                return Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Your Upcoming Booking',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${userRoom.name ?? ''}\n${userVenue.name ?? ''}\n${DateTimeUtils.formatBookingTime(upcomingBooking.startTime, upcomingBooking.endTime)}',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              DateTimeUtils.getTimeRemaining(upcomingBooking.startTime),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Confirmed',
                          style: TextStyle(
                            fontSize: 15,
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
              orElse: () => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
