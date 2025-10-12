import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/date_time_utils.dart';

class VenueRoomSelector extends StatelessWidget {
  final Function(Venue) onVenueSelected;
  final Function(Room) onRoomSelected;

  const VenueRoomSelector({
    super.key,
    required this.onVenueSelected,
    required this.onRoomSelected,
  });

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
                          date: DateTimeUtils.getApiFormattedDate(),
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
