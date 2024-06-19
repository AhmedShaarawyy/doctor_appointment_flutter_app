import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vezeeta_app/core/di/dependency_injection.dart';
import 'package:vezeeta_app/core/routing/routes.dart';
import 'package:vezeeta_app/features/home/ui/home_screen.dart';
import 'package:vezeeta_app/features/login/logic/cubit/login_cubit.dart';
import 'package:vezeeta_app/features/login/ui/login_screen.dart';
import 'package:vezeeta_app/features/onboarding/onboarding-screen.dart';
import 'package:vezeeta_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:vezeeta_app/features/signup/ui/sign_up_screen.dart';

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
                  child: LoginScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: SignUpScreen(),
                ));

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
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
