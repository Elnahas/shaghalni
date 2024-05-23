import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/di/dependency_injection.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/phone_auth_cubit.dart';

import '../../features/auth/login/ui/widgets/login_screen.dart';
import '../../features/auth/otp/ui/widgets/otp_screen.dart';
import '../../features/auth/welcome/ui/widgets/welcome_screen.dart';

class Routing {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());

      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<PhoneAuthCubit>(),
                  child: const LoginScreen(),
                ));

      case Routes.otp:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<PhoneAuthCubit>(),
                  child: const OtpScreen(),
                ));

      default:
        return MaterialPageRoute(builder: (context) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("No Route Found"),
      ),
    );
  }
}
