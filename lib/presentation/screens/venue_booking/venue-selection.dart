import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/screens/venue_booking/time-slot.dart';

class VenueSelectionScreen extends StatefulWidget {
  const VenueSelectionScreen({super.key});

  @override
  State<VenueSelectionScreen> createState() => _VenueSelectionScreenState();
}

class _VenueSelectionScreenState extends State<VenueSelectionScreen> {
  String? selectedVenueId;
  String? selectedVenueName;
  String? selectedRoomId;
  String? selectedRoomName;

  // Hardcoded venue data
  final List<Map<String, dynamic>> venues = [
    {
      "_id": "68ea2b2cbeeb215b4311b703",
      "name": "Downtown Conference Center",
      "rooms": [
        {"_id": "68ea2b2cbeeb215b4311b704", "name": "Hall A", "capacity": 30},
        {"_id": "68ea2b2cbeeb215b4311b705", "name": "Hall B", "capacity": 50},
        {
          "_id": "68ea2b2cbeeb215b4311b706",
          "name": "Meeting Room 1",
          "capacity": 12,
        },
      ],
    },
    {
      "_id": "68ea2b2cbeeb215b4311b70d",
      "name": "Thapar Convention Hall",
      "rooms": [
        {
          "_id": "68ea2b2cbeeb215b4311b70e",
          "name": "Main Auditorium",
          "capacity": 200,
        },
        {
          "_id": "68ea2b2cbeeb215b4311b70f",
          "name": "Seminar Room",
          "capacity": 40,
        },
      ],
    },
    {
      "_id": "68ea2b2cbeeb215b4311b70a",
      "name": "Skyline Event Space",
      "rooms": [
        {
          "_id": "68ea2b2cbeeb215b4311b70b",
          "name": "Rooftop Hall",
          "capacity": 80,
        },
        {
          "_id": "68ea2b2cbeeb215b4311b70c",
          "name": "VIP Lounge",
          "capacity": 15,
        },
      ],
    },
    {
      "_id": "68ea2b2cbeeb215b4311b707",
      "name": "Tech Park Convention Hall",
      "rooms": [
        {
          "_id": "68ea2b2cbeeb215b4311b708",
          "name": "Auditorium",
          "capacity": 120,
        },
        {
          "_id": "68ea2b2cbeeb215b4311b709",
          "name": "Workshop Room",
          "capacity": 25,
        },
      ],
    },
    {
      "_id": "68ea2b2cbeeb215b4311b710",
      "name": "Innovation Hub Center",
      "rooms": [
        {
          "_id": "68ea2b2cbeeb215b4311b711",
          "name": "Workshop Space",
          "capacity": 25,
        },
        {
          "_id": "68ea2b2cbeeb215b4311b712",
          "name": "Brainstorm Room",
          "capacity": 10,
        },
      ],
    },
  ];

  List<Map<String, dynamic>> get selectedVenueRooms {
    if (selectedVenueId == null) return [];
    final venue = venues.firstWhere((v) => v['_id'] == selectedVenueId);
    return List<Map<String, dynamic>>.from(venue['rooms']);
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
                  const Divider(height: 1),

                  // Venue Selection
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Venue',
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
                            children: venues.map((venue) {
                              final isSelected =
                                  selectedVenueId == venue['_id'];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedVenueId = venue['_id'];
                                    selectedVenueName = venue['name'];
                                    selectedRoomId = null;
                                    selectedRoomName = null;
                                  });
                                },
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
                                    venue['name'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: isSelected
                                          ? Colors.white
                                          : const Color(0xFF2C2C2C),
                                      fontFamily: AppFonts.gilroy,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                          // Room Selection
                          if (selectedVenueId != null) ...[
                            const SizedBox(height: 32),
                            Text(
                              'Select Room Number',
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
                              children: selectedVenueRooms.map((room) {
                                final isSelected =
                                    selectedRoomId == room['_id'];
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedRoomId = room['_id'];
                                      selectedRoomName = room['name'];
                                    });
                                  },
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
                                      room['name'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: isSelected
                                            ? Colors.white
                                            : const Color(0xFF2C2C2C),
                                        fontFamily: AppFonts.gilroy,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
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
                                selectedRoomName ?? 'No Room Selected',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF2C2C2C),
                                  fontFamily: AppFonts.gilroy,
                                ),
                              ),
                              Text(
                                selectedVenueName ?? 'No Venue Selected',
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
                          onPressed:
                              selectedVenueId != null && selectedRoomId != null
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TimeSlotSelectionScreen(
                                            venueName: selectedVenueName!,
                                            roomName: selectedRoomName!,
                                            venueId: selectedVenueId!,
                                            roomId: selectedRoomId!,
                                          ),
                                    ),
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
                            'Select Time Slot',
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
}
