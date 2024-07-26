
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/my_bloc_observer.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/routing/app_routing.dart';
import 'package:shaghalni/firebase_options.dart';
import 'package:shaghalni/app/my_app.dart';

import 'core/data/models/user_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupServiceLocator();
  await checkIfLoggedInUser();
  await checkIfSeenOnboarding();
  await getLanguage();

  // Set up the global Bloc observer
  Bloc.observer = MyBlocObserver();

  //!!This code for close rotation screen
  //   SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]).then((_) {
  //   runApp(MyApp(
  //   routing: Routing(),
  // ));
  // });

  runApp(MyApp(
    routing: AppRouting(),
  ));
}

checkIfLoggedInUser() async {
  String? userData =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userData);
  if (!userData.isNullOrEmpty()) {
    Map<String, dynamic> userMap = jsonDecode(userData!);
    userModel = UserModel.fromJson(userMap);
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

checkIfSeenOnboarding() async {
  isSeenOnboarding =
      await SharedPrefHelper.getBool(SharedPrefKeys.hasSeenOnboarding);
}

getLanguage() async {
  selectedLanguage =
      await SharedPrefHelper.getString(SharedPrefKeys.selectedLanguage);
}
