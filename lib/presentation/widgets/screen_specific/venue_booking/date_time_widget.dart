import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/utils/date_time_utils.dart';

class CurrentDateTime extends StatelessWidget {
  const CurrentDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            DateTimeUtils.getFormattedDate(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.venueBookingTheme,
              fontFamily: AppFonts.gilroy,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            DateTimeUtils.getFormattedTime(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF666666),
              fontFamily: AppFonts.gilroy,
            ),
          ),
        ],
      ),
    );
  }
}

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: const Divider(height: 1),
    );
  }
}
