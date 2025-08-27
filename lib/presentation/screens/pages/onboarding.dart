
import 'package:flutter/material.dart';
import 'package:thaparapp/presentation/views/common/get_started_bottom_sheet.dart';
import 'package:thaparapp/utils/constants/constants.dart';

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
                        // LOC8 TIET Text
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'LOC8\n',
                                style: TextStyle(
                                  fontSize: 64,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  height: 0.9,
                                  letterSpacing: 2.0,
                                ),
                              ),
                              TextSpan(
                                text: 'TIET',
                                style: TextStyle(
                                  fontSize: 64,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  height: 0.9,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ],
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
