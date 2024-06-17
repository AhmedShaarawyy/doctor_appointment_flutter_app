import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vezeeta_app/core/networking/api_service.dart';
import 'package:vezeeta_app/core/networking/dio_factory.dart';
import 'package:vezeeta_app/features/login/data/repos/login_repo.dart';
import 'package:vezeeta_app/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //Home
  
}
