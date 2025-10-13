import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/venue_booking_utils.dart';

class BookingStatusSheet extends StatelessWidget {
  const BookingStatusSheet({super.key});
  static bool hasUserBookingToday(List<Venue> venues, String? currentUserId) {
    return VenueBookingUtils.hasUserBookingToday(venues, currentUserId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VenueBookingBloc, VenueBookingState>(
      builder: (context, venueState) {
        return venueState.maybeMap(
          venuesFetched: (state) {
            if (state.status == BookingStatus.none) {
              return const SizedBox.shrink();
            }
            Venue? selectedVenue;
            Room? selectedRoom;

            if (state.venueID != null) {
              selectedVenue = state.venues.firstWhere(
                (v) => v.venueId == state.venueID,
                orElse: () => const Venue(venueId: null, name: null, rooms: []),
              );
            }

            if (state.roomID != null && selectedVenue != null) {
              selectedRoom = selectedVenue.rooms?.firstWhere(
                (r) => r.roomId == state.roomID,
                orElse: () => const Room(
                  roomId: null,
                  name: null,
                  capacity: null,
                  bookings: [],
                ),
              );
            }
            Color cardColor;
            String statusText;
            String titleText;

            switch (state.status) {
              case BookingStatus.pending:
                cardColor = const Color(0xFF4F6BF5); // Blue
                statusText = 'Pending';
                titleText = 'Booking in Progress';
                break;
              case BookingStatus.completed:
                cardColor = const Color(0xFF4CAF50); // Green
                statusText = 'Confirmed';
                titleText = 'Your Upcoming Booking';
                break;
              case BookingStatus.rejected:
                cardColor = const Color(0xFFF44336); // Red
                statusText = 'Failed';
                titleText = 'Booking Failed';
                break;
              default:
                return const SizedBox.shrink();
            }

            return Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardColor,
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
                  //! Info column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //! Title
                        Text(
                          titleText,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: AppFonts.gilroy,
                          ),
                        ),
                        const SizedBox(height: 4),
                        //! Room, venue
                        if (selectedRoom != null && selectedVenue != null) ...[
                          Text(
                            '${selectedRoom.name ?? ''} • ${selectedVenue.name ?? ''}',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ],
                        if (state.message != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            state.message ?? "",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  //! Button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      statusText,
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
  }
}
