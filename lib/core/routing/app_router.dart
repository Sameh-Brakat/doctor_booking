import 'package:doctor_booking/core/di/dependency_injection.dart';
import 'package:doctor_booking/core/routing/routes.dart';
import 'package:doctor_booking/features/home/ui/home_screen.dart';
import 'package:doctor_booking/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_booking/features/login/ui/login_screen.dart';
import 'package:doctor_booking/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route found for ${settings.name}')),
          ),
        );
    }
  }
}
