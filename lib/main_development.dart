import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/my_bloc_observer.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/routing/routing.dart';
import 'package:shaghalni/firebase_options.dart';
import 'package:shaghalni/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await checkIfLoggedInUser();
  // Set up the global Bloc observer
  Bloc.observer = MyBlocObserver();

  runApp(MyApp(
    routing: Routing(),
  ));
}

checkIfLoggedInUser() async {
  String? userData =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userData);
  if (!userData.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
