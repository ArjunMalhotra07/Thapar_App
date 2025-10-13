// import 'package:flutter/material.dart';
// import 'package:thaparapp/data/model/venue/venue.dart';
// import 'package:thaparapp/presentation/constants/app_fonts.dart';
// import 'package:thaparapp/utils/date_time_utils.dart';

// class UpcomingBookingCard extends StatelessWidget {
//   final Booking booking;
//   final String venueName;
//   final String roomName;

//   const UpcomingBookingCard({
//     super.key,
//     required this.booking,
//     required this.venueName,
//     required this.roomName,
//   });

//   String _formatTimeRange() {
//     try {
//       final startTime = DateTime.parse(booking.startTime ?? '');
//       final endTime = DateTime.parse(booking.endTime ?? '');

//       final startFormatted = DateTimeUtils.getFormattedTime(
//         dateTime: startTime,
//       );
//       final endFormatted = DateTimeUtils.getFormattedTime(dateTime: endTime);

//       return '$startFormatted - $endFormatted';
//     } catch (e) {
//       return 'Time not available';
//     }
//   }

//   String _calculateTimeUntilStart() {
//     try {
//       final startTime = DateTime.parse(booking.startTime ?? '');
//       final now = DateTime.now();
//       final difference = startTime.difference(now);

//       if (difference.isNegative) {
//         return 'Started';
//       }

//       final hours = difference.inHours;
//       final minutes = difference.inMinutes % 60;

//       if (hours > 0) {
//         return '(Starts in $hours hrs ${minutes} mins)';
//       } else {
//         return '(Starts in $minutes mins)';
//       }
//     } catch (e) {
//       return '';
//     }
//   }

//   Color _getBackgroundColor() {
//     return booking.status == 'confirmed'
//         ? const Color(0xFFD4F4DD) // Light green
//         : const Color(0xFFDEE5FF); // Light blue
//   }

//   Color _getStatusColor() {
//     return booking.status == 'confirmed'
//         ? const Color(0xFF4CAF50)
//         : const Color(0xFF4F6BF5);
//   }

//   Color _getTextColor() {
//     return booking.status == 'confirmed'
//         ? const Color(0xFF2E7D32)
//         : const Color(0xFF1E3A8A);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 24),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: _getBackgroundColor(),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Your Upcoming Booking',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: _getTextColor(),
//                       fontFamily: AppFonts.gilroy,
//                     ),
//                   ),
//                   const SizedBox(height: 2),
//                   Text(
//                     _calculateTimeUntilStart(),
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                       color: _getTextColor().withOpacity(0.7),
//                       fontFamily: AppFonts.gilroy,
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16,
//                   vertical: 6,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(color: _getStatusColor(), width: 1.5),
//                 ),
//                 child: Text(
//                   booking.status?.toUpperCase() ?? 'PENDING',
//                   style: TextStyle(
//                     fontSize: 11,
//                     fontWeight: FontWeight.w700,
//                     color: _getStatusColor(),
//                     fontFamily: AppFonts.gilroy,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Text(
//             roomName,
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.w700,
//               color: _getTextColor(),
//               fontFamily: AppFonts.gilroy,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             _formatTimeRange(),
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w600,
//               color: _getTextColor(),
//               fontFamily: AppFonts.gilroy,
//             ),
//           ),
//           const SizedBox(height: 12),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   // TODO: Implement cancel booking
//                   print('Cancel booking: ${booking.id}');
//                 },
//                 style: TextButton.styleFrom(
//                   padding: EdgeInsets.zero,
//                   minimumSize: const Size(0, 0),
//                   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                 ),
//                 child: Text(
//                   'CANCEL BOOKING',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                     color: _getTextColor().withOpacity(0.8),
//                     fontFamily: AppFonts.gilroy,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
