import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vezeeta_app/core/helpers/spacing.dart';
import 'package:vezeeta_app/features/signup/logic/cubit/signup_cubit.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../../login/ui/widgets/password_validations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  bool isPhoneNumberValid = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = passwordController.text.contains(RegExp(r'[a-z]'));
        hasUpperCase = passwordController.text.contains(RegExp(r'[A-Z]'));
        hasNumber = passwordController.text.contains(RegExp(r'[0-9]'));
        hasSpecialCharacter =
            passwordController.text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
        hasMinLength = passwordController.text.length >= 8;
        isPhoneNumberValid = passwordController.text.length == 11 && passwordController.text.contains(RegExp(r'(010|011|012|015) [0-9]{8}$'));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid name";
              }
            },
            controller: context.read<SignupCubit>().nameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Phone Number',
            validator: (value) {
              if (value == null || value.isEmpty || isPhoneNumberValid) {
                return "Please enter a valid phone Number";
              }
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return "Please enter a valid Email";
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Password',
            isobscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(isPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            controller: context.read<SignupCubit>().passwordController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Confirm Password',
            isobscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(isPasswordConfirmationObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            controller: context.read<SignupCubit>().confirmPasswordController,
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
  }
}
