import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vezeeta_app/core/helpers/spacing.dart';
import 'package:vezeeta_app/core/theming/styles.dart';
import 'package:vezeeta_app/core/widgets/app_text_button.dart';
import 'package:vezeeta_app/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:vezeeta_app/features/signup/logic/cubit/signup_cubit.dart';

import 'widgets/already_have_account_text.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/signup_bloc_listener.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14grayRegular),
              verticalSpace(36),
              Column(
                children: [
                  const SignUpForm(),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Create Account',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      validateThenDoSignUp(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionText(),
                  verticalSpace(30),
                  const AlreadyHaveAccountText(),
                  const SignupBlocListener(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

void validateThenDoSignUp(BuildContext context) {
  if (context.read<SignupCubit>().formKey.currentState!.validate()) {
    context.read<SignupCubit>().emitSignupStates();
  }
}
