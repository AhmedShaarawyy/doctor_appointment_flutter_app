import 'package:flutter/material.dart';
import 'package:vezeeta_app/core/helpers/spacing.dart';
import 'package:vezeeta_app/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacter,
      required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            "At least 1 special charachter", hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow("At least 1  number", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 charachters Long", hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              color: hasValidated ? ColorManager.gray : ColorManager.mainBlue),
        )
      ],
    );
  }
}
