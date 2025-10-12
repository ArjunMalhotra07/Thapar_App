import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

class TimeSlotSelectionScreen extends StatefulWidget {
  final String venueName;
  final String roomName;
  final String venueId;
  final String roomId;

  const TimeSlotSelectionScreen({
    super.key,
    required this.venueName,
    required this.roomName,
    required this.venueId,
    required this.roomId,
  });

  @override
  State<TimeSlotSelectionScreen> createState() =>
      _TimeSlotSelectionScreenState();
}

class _TimeSlotSelectionScreenState extends State<TimeSlotSelectionScreen> {
  String? selectedTimeSlot;
  String? selectedTimeRange;

  // Hardcoded time slots from 10 AM to 5 PM
  final List<Map<String, dynamic>> timeSlots = [
    {
      'label': '10AM - 11AM',
      'startTime': 10,
      'endTime': 11,
      'status': true, // true = available, false = booked
    },
    {'label': '11AM - 12PM', 'startTime': 11, 'endTime': 12, 'status': true},
    {'label': '12PM - 01PM', 'startTime': 12, 'endTime': 13, 'status': false},
    {'label': '01PM - 02PM', 'startTime': 13, 'endTime': 14, 'status': true},
    {'label': '02PM - 03PM', 'startTime': 14, 'endTime': 15, 'status': false},
    {'label': '03PM - 04PM', 'startTime': 15, 'endTime': 16, 'status': true},
    {'label': '04PM - 05PM', 'startTime': 16, 'endTime': 17, 'status': true},
  ];

  bool isSlotExpired(int endTime) {
    final now = DateTime.now();
    final currentHour = now.hour;
    return endTime <= currentHour;
  }

  SlotState getSlotState(Map<String, dynamic> slot) {
    if (isSlotExpired(slot['endTime'])) {
      return SlotState.expired;
    }
    if (slot['status'] == false) {
      return SlotState.booked;
    }
    return SlotState.available;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2C2C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2C2C),
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
      body: Column(
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
                  // Date and Time Header
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          formattedDate,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2C2C2C),
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

                  // Change Venue Button
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
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

                  // Time Slot Selection
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Time Slot',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2C2C2C),
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Wrap(
                            spacing: 12,
                            runSpacing: 12,
                            children: timeSlots.map((slot) {
                              final slotState = getSlotState(slot);
                              final isSelected =
                                  selectedTimeSlot == slot['label'];
                              final canSelect =
                                  slotState == SlotState.available;

                              return GestureDetector(
                                onTap: canSelect
                                    ? () {
                                        setState(() {
                                          selectedTimeSlot = slot['label'];
                                          selectedTimeRange =
                                              '${slot['startTime'].toString().padLeft(2, '0')}:00 - ${slot['endTime'].toString().padLeft(2, '0')}:00 ${slot['endTime'] >= 12 ? 'PM' : 'AM'}';
                                        });
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
                                  child: Text(
                                    slot['label'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: getSlotTextColor(
                                        slotState,
                                        isSelected,
                                      ),
                                      fontFamily: AppFonts.gilroy,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 32),

                          // Legend
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
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),

                  // Bottom Section
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
                                  color: const Color(0xFF2C2C2C),
                                  fontFamily: AppFonts.gilroy,
                                ),
                              ),
                              Text(
                                selectedTimeRange ?? 'No time selected',
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
                        ElevatedButton(
                          onPressed: selectedTimeSlot != null
                              ? () {
                                  print(
                                    'Booking slot: ${widget.roomName} at $selectedTimeSlot',
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4F6BF5),
                            disabledBackgroundColor: const Color(0xFFE0E0E0),
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

enum SlotState { available, booked, expired }
