import 'package:get_it/get_it.dart';
import 'package:shaghalni/core/repositories/category_repository.dart';
import 'package:shaghalni/core/repositories/user_repository.dart';
import 'package:shaghalni/core/repositories/job_repository.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import '../../features/job_details/logic/job_details_cubit.dart';
import '../../features/language/logic/language_cubit.dart';
import '../repositories/auth_repository.dart';
import '../repositories/city_repository.dart';

final getIt = GetIt.instance;
void setupServiceLocator( ) {
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  getIt.registerSingleton<CategoryRepository>(CategoryRepository());
  getIt.registerSingleton<CityRepository>(CityRepository());
  getIt.registerSingleton<JobRepository>(JobRepository());
  getIt.registerSingleton<UserRepository>(UserRepository());

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepository>()));
  getIt.registerFactory<OtpCubit>(
      () => OtpCubit(getIt<AuthRepository>(), getIt<UserRepository>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepository>(),
      getIt<UserRepository>(), getIt<CityRepository>()));

  getIt.registerFactory<AddJobCubit>(() => AddJobCubit(
      getIt<CategoryRepository>(),
      getIt<CityRepository>(),
      getIt<JobRepository>()));

  getIt.registerSingleton<LanguageCubit>(LanguageCubit());

  getIt.registerFactory<JobDetailsCubit>(() => JobDetailsCubit(getIt<JobRepository>()));

}
