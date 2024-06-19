import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  SignUpRequestBody(
      {required this.name,
      required this.email,
      required this.phone,
      required this.gender,
      required this.password,
      required this.confirmPassword});
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
