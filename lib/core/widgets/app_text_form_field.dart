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
      this.backgroundColor});
  final EdgeInsetsGeometry? contetPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isobscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contetPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: ColorManager.mainBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16.0)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: ColorManager.lighterGray, width: 1.3),
                  borderRadius: BorderRadius.circular(16.0)),
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? ColorManager.moreLightGray,
          filled: true),
      obscureText: isobscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
