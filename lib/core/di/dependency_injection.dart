import 'package:get_it/get_it.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/phone_auth_cubit.dart';

import '../database/cache/cache_helper.dart';

final getIt = GetIt.instance ;
void setupServiceLocator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<PhoneAuthCubit>(PhoneAuthCubit());
}