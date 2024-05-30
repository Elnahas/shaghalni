import 'package:get_it/get_it.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';

import '../repositories/auth_repository.dart';
import '../database/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {


  getIt.registerSingleton<CacheHelper>(CacheHelper());

  getIt.registerSingleton<AuthRepository>(AuthRepository());

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepository>()));
  getIt.registerFactory<OtpCubit>(() => OtpCubit(getIt<AuthRepository>()));
  getIt
      .registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepository>()));
}
