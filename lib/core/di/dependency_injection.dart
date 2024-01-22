import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:online_clinic/core/networking/api_service.dart';
import 'package:online_clinic/core/networking/dio_factory.dart';
import 'package:online_clinic/features/login/data/repos/login_repo.dart';
import 'package:online_clinic/features/login/logic/cubit/login_cubit.dart';
import 'package:online_clinic/features/register/data/repo/register_repo.dart';
import 'package:online_clinic/features/register/logic/cubit/register_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // register

  getIt.registerLazySingleton<RegisterRepo>(
      () => RegisterRepo(getIt<ApiService>()));
  getIt.registerFactory<RegisterCubit>(
      () => RegisterCubit(getIt<RegisterRepo>()));
}
