import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/database/cache/cache_helper.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/my_bloc_observer.dart';
import 'package:shaghalni/core/routing/routing.dart';
import 'package:shaghalni/firebase_options.dart';
import 'package:shaghalni/my_app.dart';

void main()  async{

    WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupServiceLocator();
  await getIt<CacheHelper>().init();

    // Set up the global Bloc observer
  Bloc.observer = MyBlocObserver();

  runApp( 
    MyApp(
    routing: Routing(),
  ));
}