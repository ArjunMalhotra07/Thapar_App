import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/constants/app_images.dart';
import 'package:thaparapp/presentation/widgets/common/bottom_sheets/get_started_bottom_sheet.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.logo),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Dark overlay for better text readability
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.3),
          ),

          // Main Content
          SafeArea(
            child: Column(
              children: [
                // Top section with LOC8 TIET text
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.heading,
                                  width: 280,
                                  height: 160,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Bottom Sheet
                GetStartedBottomSheet(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
