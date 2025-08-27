
import 'package:flutter/material.dart';
import 'package:thaparapp/utils/constants/app_fonts.dart';
import 'package:thaparapp/utils/constants/constants.dart';

class GetStartedBottomSheet extends StatelessWidget {
  const GetStartedBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Small icon above the sheet
          Transform.translate(
            offset: const Offset(0, -50),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF640100),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppImages.logo2,
                  color: Colors.white,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 40),
            child: Column(
              children: [
                // Main heading
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                        text: 'Step Into Real ',
                        style: TextStyle(fontFamily: AppFonts.gilroy),
                      ),
                      TextSpan(
                        text: 'Urbanization.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.gilroy,
                        ),
                      ),
                      TextSpan(
                        text: 'Smarter Campus',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.gilroy,
                        ),
                      ),
                      TextSpan(
                        text: ' Living.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.gilroy,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Description
                Text(
                  'From vital resources to essential services, LOC8TIET brings your entire campus life to fingertips.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.gilroy,
                    color: Color(0xFF868686),
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 40),

                // Get Started Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement navigation
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF640100),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 2,
                    ),
                    child:  Text(
                      "Let's Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontFamily: AppFonts.gilroy
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
