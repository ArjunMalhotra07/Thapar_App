import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/utils/date_time_utils.dart';

enum SlotState { available, booked, expired }

class VenueBookingUtils {
  /// Checks if a time slot is booked by comparing hours from ISO timestamps
  static bool isSlotBooked(String startTime, String endTime, List<Booking> bookings) {
    // Convert slot times (HH:00 format) to hours for comparison
    final slotStartHour = int.parse(startTime.split(':')[0]);
    
    for (final booking in bookings) {
      if (booking.startTime != null) {
        try {
          // Parse the ISO timestamp from booking
          final bookingStart = DateTime.parse(booking.startTime!.replaceAll('Z', ''));
          final bookingStartHour = bookingStart.hour;
          
          // Check if this booking's hour matches our slot's hour
          if (bookingStartHour == slotStartHour) {
            return true;
          }
        } catch (e) {
          // If parsing fails, continue to next booking
          continue;
        }
      }
    }
    return false;
  }

  /// Checks if a time slot is expired (current hour or past)
  static bool isSlotExpired(int hour) {
    final now = DateTime.now();
    // Slot is expired if it's in the past or current hour
    return hour <= now.hour;
  }

  /// Gets the state of a time slot (available, booked, expired)
  static SlotState getSlotState(Map<String, dynamic> slot, List<Booking> bookings) {
    if (isSlotExpired(slot['hour'])) {
      return SlotState.expired;
    }
    if (isSlotBooked(slot['startTime'], slot['endTime'], bookings)) {
      return SlotState.booked;
    }
    return SlotState.available;
  }

  /// Gets the background color for a time slot based on state and selection
  static Color getSlotColor(SlotState state, bool isSelected) {
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

  /// Gets the border color for a time slot based on state
  static Color getSlotBorderColor(SlotState state) {
    switch (state) {
      case SlotState.available:
        return const Color(0xFF4CAF50);
      case SlotState.booked:
        return const Color(0xFFF44336);
      case SlotState.expired:
        return const Color(0xFFBDBDBD);
    }
  }

  /// Gets the text color for a time slot based on state and selection
  static Color getSlotTextColor(SlotState state, bool isSelected) {
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

  /// Extracts error message from API response
  static String extractErrorMessage(String? message) {
    if (message != null && message.contains('Only Authorized For Club Members')) {
      return 'Only Authorized For Club Members';
    } else if (message != null) {
      return message;
    }
    return 'Booking failed';
  }

  /// Gets upcoming booking for a specific user and room
  static Booking? getUpcomingBooking(
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

      final userTodayBookings = room.bookings?.where((booking) {
        if (booking.startTime == null || booking.userId != currentUserId) {
          return false;
        }
        return DateTimeUtils.isTodayAndFuture(booking.startTime);
      }).toList() ?? [];

      if (userTodayBookings.isEmpty) return null;

      // Sort by start time and get the earliest upcoming booking
      userTodayBookings.sort((a, b) {
        final aTime = DateTimeUtils.parseDateTime(a.startTime);
        final bTime = DateTimeUtils.parseDateTime(b.startTime);
        if (aTime == null || bTime == null) return 0;
        return aTime.compareTo(bTime);
      });

      return userTodayBookings.first;
    } catch (e) {
      return null;
    }
  }

  /// Checks if user has any upcoming bookings today across all venues
  static bool hasAnyUserUpcomingBooking(List<Venue> venues, String? currentUserId) {
    if (currentUserId == null) return false;

    for (final venue in venues) {
      for (final room in venue.rooms ?? []) {
        final userBookings = room.bookings
                ?.where((booking) => booking.userId == currentUserId)
                .toList() ??
            [];

        if (userBookings.isNotEmpty) {
          final todayBookings = userBookings.where((booking) {
            return DateTimeUtils.isTodayAndFuture(booking.startTime);
          }).toList();

          if (todayBookings.isNotEmpty) return true;
        }
      }
    }
    return false;
  }

  /// Checks if user has ANY booking today (past or future)
  static bool hasUserBookingToday(List<Venue> venues, String? currentUserId) {
    if (currentUserId == null) return false;

    for (final venue in venues) {
      for (final room in venue.rooms ?? []) {
        final userBookings = room.bookings
                ?.where((booking) => booking.userId == currentUserId)
                .toList() ??
            [];

        if (userBookings.isNotEmpty) {
          final todayBookings = userBookings.where((booking) {
            return DateTimeUtils.isToday(booking.startTime);
          }).toList();

          if (todayBookings.isNotEmpty) return true;
        }
      }
    }
    return false;
  }

  /// Finds the venue and room with user's upcoming booking
  static Map<String, dynamic>? findUserUpcomingBooking(
    List<Venue> venues,
    String? currentUserId,
  ) {
    if (currentUserId == null) return null;

    for (final venue in venues) {
      for (final room in venue.rooms ?? []) {
        final booking = getUpcomingBooking([room], room.roomId, currentUserId);
        if (booking != null) {
          return {
            'venue': venue,
            'room': room,
            'booking': booking,
          };
        }
      }
    }
    return null;
  }
}