import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vezeeta_app/core/theming/colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.onPressed,
      required this.buttonText,
      this.textStyle,
      this.backgroundColor,
      this.verticalPadding,
      this.horizontalPadding,
      this.borderRadius,
      this.buttonWidth,
      this.buttonHeight});
  final void Function()? onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? borderRadius;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
      style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(backgroundColor ?? ColorManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52.h)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16))),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h)),
          fixedSize: WidgetStatePropertyAll(
              Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h))),
    );
  }
}
