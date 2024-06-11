import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vezeeta_app/core/theming/styles.dart';
import 'package:vezeeta_app/core/utils/app_images.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.assetsSvgsDocdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.14, 0.4])),
          child: Image.asset(Assets.assetsSvgsOnboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text('Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4)),
        )
      ],
    );
  }
}
