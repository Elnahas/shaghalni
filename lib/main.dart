import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/database/cache/cache_helper.dart';
import 'package:shaghalni/core/di/dependency_injection.dart';
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

  runApp( 
    MyApp(
    routing: Routing(),
  ));
}