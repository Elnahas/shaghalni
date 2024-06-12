import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shaghalni/features/language/logic/language_cubit.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/routing/routing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/di/service_locator.dart';
import '../generated/l10n.dart';

class MyApp extends StatelessWidget {
  final Routing routing;
  const MyApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: BlocProvider(
        create: (context) => getIt<LanguageCubit>(),
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: locale,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: "Shaghalni",
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                useMaterial3: true,
              ),
              onGenerateRoute: routing.onGenerateRoute,
              // home: SignupScreen(),
              // initialRoute: getInitialRoute(),
              initialRoute: Routes.login,
            );
          },
        ),
      ),
    );
  }

  String getInitialRoute() {
    if (isLoggedInUser) {
      return Routes.home;
    }

    if (!isSeenOnboarding) {
      if (selectedLanguage.isNullOrEmpty()) {
        return Routes.language;
      } else {
        return Routes.onboarding;
      }
    }

    return Routes.login;
  }
}
