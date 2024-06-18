import 'package:flutter/material.dart';
import 'package:vezeeta_app/core/routing/routes.dart';
import 'package:vezeeta_app/features/login/ui/login_screen.dart';
import 'package:vezeeta_app/features/onboarding/onboarding-screen.dart';
import 'package:vezeeta_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:vezeeta_app/features/signup/ui/sign_up_screen.dart';

class AppRouter {
  Route generteRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const Onboardingscreen());
      case Routes.loginScreen:
<<<<<<< Updated upstream
        return MaterialPageRoute(builder: (context) => const LoginScreen());
=======
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
>>>>>>> Stashed changes
      default:
        return MaterialPageRoute(builder: (context) =>  Scaffold(
          body: Center(child: Text('No Route defined for ${settings.name}'),),
        ));
    }
  }
}
