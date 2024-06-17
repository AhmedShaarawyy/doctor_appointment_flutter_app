import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By continuing you agree to our ',
              style: TextStyles.font13grayRegular),
          TextSpan(
            text: 'Terms and Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
              text: ' and ',
              style: TextStyles.font13grayRegular.copyWith(height: 1.5)),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ]));
  }
}
