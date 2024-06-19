import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vezeeta_app/core/networking/api_constants.dart';
import 'package:vezeeta_app/features/login/data/models/login_request_body.dart';
import 'package:vezeeta_app/features/login/data/models/login_response.dart';
import 'package:vezeeta_app/features/signup/data/models/sign_up_request_body.dart';

import '../../features/signup/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

    @POST(ApiConstants.signUp)
  Future<SignUpResponse> signup(@Body() SignUpRequestBody signUpRequestBody);
}
