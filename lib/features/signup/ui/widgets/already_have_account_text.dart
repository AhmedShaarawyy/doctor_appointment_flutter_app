import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:vezeeta_app/core/helpers/extenstions.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account? ',
          style: TextStyles.font13DarkBlueRegular,
        ),
        TextSpan(
            text: 'Login',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              }),
      ]),
    );
  }
}
