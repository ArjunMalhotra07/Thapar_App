import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:thaparapp/presentation/constants/app_icons.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
import 'package:thaparapp/presentation/screens/home/log_out_dialog.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/home/feature_card.dart';

// Main Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.appThemeColor),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Greeting and Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi,',
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Om Arora',
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // Search and Logout Icons
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // TODO: Implement search functionality
                        },
                        icon: Image.asset(
                          AppIcons.search,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          showLogoutDialog(context);
                        },
                        icon: Image.asset(
                          AppIcons.logout,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Subtitle
              Text(
                'Here\'s everything you need for your campus, all in one place.',
                style: TextStyle(
                  fontFamily: AppFonts.gilroy,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 32),

              // Feature Cards Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: 3, // Only showing first 3 cards
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return FeatureCard(
                        iconPath: AppIcons.locateUs,
                        title: 'Locate Us',
                        subtitle: 'Explore every corner\n   of your campus.',
                        backgroundColor: AppColor.locateUsTheme,
                        onTap: () {
                          GoRouter.of(context).push(AppRoute.locations);
                        },
                      );
                    case 1:
                      return FeatureCard(
                        iconPath: AppIcons.chatbot,
                        title: 'AI ChatBot',
                        subtitle: 'Got questions..?\nI\'ve got answers.',
                        backgroundColor: AppColor.aiChatBotTheme,
                        onTap: () {
                          GoRouter.of(context).push(AppRoute.chat);
                        },
                      );
                    case 2:
                      return FeatureCard(
                        iconPath: AppIcons.lostandfound,
                        title: 'Lost & Found',
                        subtitle:
                            'Helping you reconnect\n    with lost things.',
                        backgroundColor: const Color(0xFFFFBE34),
                        onTap: () {
                          // TODO: Navigate to Lost & Found screen
                        },
                      );
                    default:
                      return const SizedBox.shrink();
                  }
                },
              ),

              const SizedBox(height: 40),

              // Upcoming Features Section
              Text(
                'Upcoming Features',
                style: TextStyle(
                  fontFamily: AppFonts.gilroy,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Here\'s a sneak peek at what\'s coming next for you.',
                style: TextStyle(
                  fontFamily: AppFonts.gilroy,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 24),

              // Upcoming Features Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: 2, // MediShare and Venue Booking
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return FeatureCard(
                        iconPath: AppIcons.medishare,
                        title: 'MediShare',
                        subtitle: 'A helping hand \n  for your health.',
                        backgroundColor: const Color(0xFF56C167),
                        onTap: () {
                          // TODO: Navigate to MediShare screen (coming soon)
                        },
                      );
                    case 1:
                      return FeatureCard(
                        iconPath: AppIcons.venue,
                        title: 'Venue Booking',
                        subtitle: '  Set time and\nsecure your spot.',
                        backgroundColor: const Color(0xFF737373),
                        onTap: () {
                          // TODO: Navigate to Venue Booking screen (coming soon)
                        },
                      );
                    default:
                      return const SizedBox.shrink();
                  }
                },
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
