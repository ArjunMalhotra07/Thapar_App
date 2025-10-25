import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thaparapp/business/locations/locations_bloc.dart';
import 'package:thaparapp/business/login/auth_bloc.dart';
import 'package:thaparapp/business/lost_and_found/lost_and_found_bloc.dart';
import 'package:thaparapp/business/startup/startup_bloc.dart';
import 'package:thaparapp/business/venue_selection/venue_booking_bloc.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/presentation/screens/chat/chat_screen.dart';
import 'package:thaparapp/presentation/screens/home/home.dart';
import 'package:thaparapp/presentation/screens/auth/login_screen.dart';
import 'package:thaparapp/presentation/screens/locations/location_screen.dart';
import 'package:thaparapp/presentation/screens/lost_and_found/lost_and_found_screen.dart';
import 'package:thaparapp/presentation/screens/medicine/add_medicine_screen.dart';
import 'package:thaparapp/presentation/screens/medicine/medi_share_screen.dart';
import 'package:thaparapp/presentation/screens/onboarding/onboarding.dart';
import 'package:thaparapp/presentation/screens/splash/splash.dart';
import 'package:thaparapp/presentation/screens/splash/start_up.dart';
import 'package:thaparapp/presentation/constants/routes.dart';
import 'package:thaparapp/presentation/screens/venue_booking/room-selection.dart';
import 'package:thaparapp/presentation/screens/venue_booking/time-slot.dart';
import 'package:thaparapp/presentation/screens/venue_booking/venue-selection.dart';

class Routing {
  const Routing._();
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoute.startUp,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text('Error: ${state.error}')));
    },
    routes: [
      //! startup
      GoRoute(
        path: AppRoute.startUp,
        builder: (context, state) => BlocProvider.value(
          value: locator<StartupBloc>(),
          child: const StartUpScreen(),
        ),
      ),
      //! Splash
      GoRoute(
        path: AppRoute.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      //! login
      GoRoute(
        path: AppRoute.login,
        builder: (context, state) => BlocProvider.value(
          value: locator<AuthBloc>(),
          child: LoginScreen(),
        ),
      ),
      //! home
      GoRoute(
        path: AppRoute.home,
        builder: (context, state) =>
            BlocProvider.value(value: locator<AuthBloc>(), child: HomeScreen()),
      ),
      //! onboarding
      GoRoute(
        path: AppRoute.onboarding,
        builder: (context, state) => OnboardingScreen(),
      ),
      //! chat
      GoRoute(path: AppRoute.chat, builder: (context, state) => ChatScreen()),
      //! locations
      GoRoute(
        path: AppRoute.locations,
        builder: (context, state) => BlocProvider.value(
          value: locator<LocationsBloc>(),
          child: LocationsScreen(),
        ),
      ),
      //! lost and found
      GoRoute(
        path: AppRoute.lostAndFound,
        builder: (context, state) => BlocProvider.value(
          value: locator<LostAndFoundBloc>(),
          child: LostFoundScreen(),
        ),
      ),
      //! venue booking
      GoRoute(
        path: AppRoute.venueBooking,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider<VenueBookingBloc>.value(
              value: locator<VenueBookingBloc>(),
            ),
            BlocProvider<AuthBloc>.value(value: locator<AuthBloc>()),
          ],
          child: VenueSelectionScreen(),
        ),
      ),
      //! Room booking
      GoRoute(
        path: AppRoute.roomSeletion,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider<VenueBookingBloc>.value(
              value: locator<VenueBookingBloc>(),
            ),
            BlocProvider<AuthBloc>.value(value: locator<AuthBloc>()),
          ],
          child: RoomSelectionScreen(),
        ),
      ),
      //! timeslot
      GoRoute(
        path: AppRoute.timeSlot,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>;
          return MultiBlocProvider(
            providers: [
              BlocProvider<VenueBookingBloc>.value(
                value: locator<VenueBookingBloc>(),
              ),
              BlocProvider<AuthBloc>.value(value: locator<AuthBloc>()),
            ],
            child: TimeSlotSelectionScreen(
              venueName: args['venueName'],
              roomName: args['roomName'],
              venueId: args['venueId'],
              roomId: args['roomId'],
              bookings: args['bookings'],
            ),
          );
        },
      ),
      //! MediShare
      GoRoute(
        path: AppRoute.medishare,
        builder: (context, state) {
          return MedicineBoxScreen();
        },
      ),
      //! Add Medicine
      GoRoute(
        path: AppRoute.medishare,
        builder: (context, state) {
          return AddMedicineScreen();
        },
      ),
    ],
  );
}
