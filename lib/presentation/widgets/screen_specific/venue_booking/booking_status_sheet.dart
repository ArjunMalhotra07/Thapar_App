import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class BookingStatusSheet extends StatelessWidget {
  const BookingStatusSheet({super.key});

  String _getTimeRemaining(String? startTime) {
    if (startTime == null) return '';

    try {
      final now = DateTime.now();
      final bookingStart = DateTime.parse(startTime.replaceAll('Z', ''));
      final difference = bookingStart.difference(now);

      if (difference.isNegative) {
        return 'In progress';
      }

      final hours = difference.inHours;
      final minutes = difference.inMinutes % 60;

      if (hours > 0) {
        return 'Starts in ${hours}h ${minutes}min';
      } else {
        return 'Starts in ${minutes}min';
      }
    } catch (e) {
      return '';
    }
  }

  Booking? _getUpcomingBooking(
    List<Room> rooms,
    String? roomID,
    String? currentUserId,
  ) {
    if (roomID == null || currentUserId == null) return null;

    try {
      final room = rooms.firstWhere(
        (r) => r.roomId == roomID,
        orElse: () =>
            const Room(roomId: null, name: null, capacity: null, bookings: []),
      );

      final now = DateTime.now();
      final userTodayBookings =
          room.bookings?.where((booking) {
            if (booking.startTime == null || booking.userId != currentUserId)
              return false;
            try {
              final bookingDate = DateTime.parse(
                booking.startTime!.replaceAll('Z', ''),
              );
              return bookingDate.year == now.year &&
                  bookingDate.month == now.month &&
                  bookingDate.day == now.day &&
                  bookingDate.isAfter(now);
            } catch (e) {
              return false;
            }
          }).toList() ??
          [];

      if (userTodayBookings.isEmpty) return null;

      // Sort by start time and get the earliest upcoming booking
      userTodayBookings.sort((a, b) {
        final aTime = DateTime.parse(a.startTime!.replaceAll('Z', ''));
        final bTime = DateTime.parse(b.startTime!.replaceAll('Z', ''));
        return aTime.compareTo(bTime);
      });

      return userTodayBookings.first;
    } catch (e) {
      return null;
    }
  }

  bool _hasAnyUserBooking(List<Venue> venues, String? currentUserId) {
    if (currentUserId == null) return false;

    for (final venue in venues) {
      for (final room in venue.rooms ?? []) {
        final userBookings =
            room.bookings
                ?.where((booking) => booking.userId == currentUserId)
                .toList() ??
            [];
        if (userBookings.isNotEmpty) {
          final now = DateTime.now();
          final todayBookings = userBookings.where((booking) {
            if (booking.startTime == null) return false;
            try {
              final bookingDate = DateTime.parse(
                booking.startTime!.replaceAll('Z', ''),
              );
              return bookingDate.year == now.year &&
                  bookingDate.month == now.month &&
                  bookingDate.day == now.day &&
                  bookingDate.isAfter(now);
            } catch (e) {
              return false;
            }
          }).toList();
          if (todayBookings.isNotEmpty) return true;
        }
      }
    }
    return false;
  }

  String _formatBookingTime(String? startTime, String? endTime) {
    if (startTime == null || endTime == null) return '';

    try {
      final start = DateTime.parse(startTime.replaceAll('Z', ''));
      final end = DateTime.parse(endTime.replaceAll('Z', ''));

      final startHour = start.hour;
      final endHour = end.hour;

      String formatHour(int hour) {
        if (hour == 0) return '12AM';
        if (hour < 12) return '${hour}AM';
        if (hour == 12) return '12PM';
        return '${hour - 12}PM';
      }

      return '${formatHour(startHour)} - ${formatHour(endHour)}';
    } catch (e) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    print("here");
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
                // Check if current user has any bookings across all venues
                if (!_hasAnyUserBooking(venues, currentUserId)) {
                  return const SizedBox.shrink();
                }

                // Find the venue and room with user's booking
                Venue? userVenue;
                Room? userRoom;
                Booking? upcomingBooking;

                for (final venue in venues) {
                  for (final room in venue.rooms ?? []) {
                    final booking = _getUpcomingBooking(
                      [room],
                      room.roomId,
                      currentUserId,
                    );
                    if (booking != null) {
                      userVenue = venue;
                      userRoom = room;
                      upcomingBooking = booking;
                      break;
                    }
                  }
                  if (upcomingBooking != null) break;
                }

                if (upcomingBooking == null ||
                    userVenue == null ||
                    userRoom == null) {
                  return const SizedBox.shrink();
                }

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
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${userRoom.name ?? ''} • ${userVenue.name ?? ''} • ${_formatBookingTime(upcomingBooking.startTime, upcomingBooking.endTime)}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              _getTimeRemaining(upcomingBooking.startTime),
                              style: TextStyle(
                                fontSize: 12,
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
              orElse: () => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
