import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vezeeta_app/core/theming/colors.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52.h)),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        ),
        child: Text('Get Started', style: TextStyles.font16WhiteSemiBold));
  }
}
