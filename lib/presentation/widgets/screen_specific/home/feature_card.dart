import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';

// Reusable Feature Card Component
class FeatureCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                iconPath,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),
            // Title
            Text(
              title,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 4),
            // Subtitle
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
