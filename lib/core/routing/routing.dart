import 'package:flutter/material.dart';
import 'package:shaghalni/core/routing/routes.dart';

import '../../features/auth/welcome/ui/widgets/welcome_screen.dart';

class Routing {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());

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
