import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vezeeta_app/core/di/dependency_injection.dart';
import 'package:vezeeta_app/core/routing/routes.dart';
import 'package:vezeeta_app/features/login/logic/cubit/login_cubit.dart';
import 'package:vezeeta_app/features/login/ui/login_screen.dart';
import 'package:vezeeta_app/features/onboarding/onboarding-screen.dart';

class AppRouter {
  Route generteRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child:  LoginScreen(),
                ));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('No Route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
