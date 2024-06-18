import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vezeeta_app/core/theming/colors.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contetPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isobscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator});
  final EdgeInsetsGeometry? contetPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isobscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contetPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ?? borderDetails(ColorManager.mainBlue),
          enabledBorder:
              enabledBorder ?? borderDetails(ColorManager.lighterGray),
          errorBorder: borderDetails(Colors.red),
          focusedErrorBorder: borderDetails(Colors.red),
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? ColorManager.moreLightGray,
          filled: true),
      obscureText: isobscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }

  OutlineInputBorder borderDetails(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1.3),
        borderRadius: BorderRadius.circular(16.0));
  }
}
