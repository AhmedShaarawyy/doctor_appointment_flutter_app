import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vezeeta_app/core/theming/styles.dart';
import 'package:vezeeta_app/core/utils/app_images.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.assetsSvgsDocdocLogo),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'DocDoc',
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
