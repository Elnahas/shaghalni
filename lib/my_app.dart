import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/routing/routing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  final Routing routing;
  const MyApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shaghalni",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        onGenerateRoute: routing.onGenerateRoute,
        initialRoute: getInitialRoute(),
      ),
    );
  }

  String getInitialRoute() {
    if (isLoggedInUser) {
      return Routes.home;
    } else {
      if (isSeenOnboarding) {
        return Routes.login;
      } else {
        return Routes.onboarding;
      }
    }
  }
}
