import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/ui/screen/add_job_screen.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/signup_screen.dart';
import 'package:shaghalni/features/home/ui/screens/home_nav_bar_widget.dart';
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
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));

      case Routes.otp:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<OtpCubit>(),
                  child: const OtpScreen(),
                ));

      case Routes.signup:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));

      case Routes.home:
        return MaterialPageRoute(
            builder: (context) => const HomeNavBarWidget());
      case Routes.addJob:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<AddJobCubit>(),
                  child: const AddJobScreen(),
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
