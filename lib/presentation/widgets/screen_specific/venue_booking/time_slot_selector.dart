import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/data/model/venue/venue.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/venue_booking_utils.dart';

class TimeSlotSelector extends StatelessWidget {
  final List<Booking> bookings;

  const TimeSlotSelector({super.key, required this.bookings});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<VenueBookingBloc, VenueBookingState>(
        builder: (context, state) {
          final isBookingInProgress = state.maybeWhen(
            bookingInProgress: (venues, rooms, venueID, roomID, timeSlotID) => true,
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
