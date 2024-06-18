import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:vezeeta_app/core/helpers/extenstions.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account? ',
          style: TextStyles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyles.font13BlueRegular,
          recognizer: TapGestureRecognizer()..onTap = () {
             context.pushReplacementNamed(Routes.signUpScreen);
          }
        ),
      ]),
    );
  }
}
