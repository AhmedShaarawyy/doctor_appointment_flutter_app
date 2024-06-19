import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:vezeeta_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:vezeeta_app/features/signup/data/repos/sign_up_repo.dart';
import 'package:vezeeta_app/features/signup/logic/cubit/signup_state.dart';


class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signUpRepo) : super( const SignupState.initial());

  final SignUpRepo _signUpRepo;

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await _signUpRepo.signup(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: 0,
        ));

    response.when(
      success: (signUpResponse) {
        emit(SignupState.success(signUpResponse));
      },
      failure: (error) {
        emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
