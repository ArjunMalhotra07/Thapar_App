import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/venue_booking/booking_status_sheet.dart';
import 'package:thaparapp/utils/date_time_utils.dart';

class VenueRoomSelector extends StatelessWidget {
  final Function(Venue) onVenueSelected;
  final Function(Room) onRoomSelected;

  const VenueRoomSelector({
    super.key,
    required this.onVenueSelected,
    required this.onRoomSelected,
  });

  void _showCustomSnackbar(
    BuildContext context,
    String message,
    ContentType contentType,
  ) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: contentType == ContentType.warning
            ? 'Booking Limit Reached'
            : 'Info',
        titleTextStyle: TextStyle(
          fontFamily: AppFonts.gilroy,
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
        messageTextStyle: TextStyle(
          fontFamily: AppFonts.gilroy,
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
        message: message,
        contentType: contentType,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
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

              return Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, authState) {
                        final currentUser = context.read<AuthBloc>().user;
                        final currentUserId = currentUser?.userId;
                        final hasBookingToday =
                            BookingStatusSheet.hasUserBookingToday(
                              state.venues,
                              currentUserId,
                            );

                        return Column(
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
                            if (hasBookingToday) ...[
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF3E0),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color(0xFFFFB74D),
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.info_outline,
                                      color: Color(0xFFE65100),
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'You already have a booking for today. Only one booking per day is allowed.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFFE65100),
                                          fontFamily: AppFonts.gilroy,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 2.5,
                            ),
                        itemCount: state.venues.length,
                        itemBuilder: (context, index) {
                          final venue = state.venues[index];
                          final isSelected = state.venueID == venue.venueId;

                          // Check if user has a booking today to disable venues
                          final currentUser = context.read<AuthBloc>().user;
                          final currentUserId = currentUser?.userId;
                          final hasBookingToday =
                              BookingStatusSheet.hasUserBookingToday(
                                state.venues,
                                currentUserId,
                              );

                          return GestureDetector(
                            onTap: () {
                              if (hasBookingToday) {
                                _showCustomSnackbar(
                                  context,
                                  'You can only make one booking per day',
                                  ContentType.warning,
                                );
                                return;
                              }

                              onVenueSelected(venue);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: hasBookingToday
                                    ? const Color(0xFFF5F5F5)
                                    : isSelected
                                    ? const Color(0xFF4F6BF5)
                                    : Colors.white,
                                border: Border.all(
                                  color: hasBookingToday
                                      ? const Color(0xFFBDBDBD)
                                      : isSelected
                                      ? const Color(0xFF4F6BF5)
                                      : const Color(0xFFE0E0E0),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  venue.name ?? '',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: hasBookingToday
                                        ? const Color(0xFF9E9E9E)
                                        : isSelected
                                        ? Colors.white
                                        : AppColor.venueBookingTheme,
                                    fontFamily: AppFonts.gilroy,
                                  ),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
