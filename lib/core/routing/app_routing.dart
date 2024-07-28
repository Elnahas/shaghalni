import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/models/blog_model.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_cubit.dart';
import 'package:shaghalni/features/job_form/ui/screen/job_form_screen.dart';
import 'package:shaghalni/features/auth/login/logic/login_cubit.dart';
import 'package:shaghalni/features/auth/otp/logic/otp_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/ui/screen/signup_screen.dart';
import 'package:shaghalni/features/category/logic/category_cubit.dart';
import 'package:shaghalni/features/category/ui/screens/category_screen.dart';
import 'package:shaghalni/features/home/ui/screens/home_nav_bar_widget.dart';
import 'package:shaghalni/features/job_details/logic/job_details_cubit.dart';
import 'package:shaghalni/features/job_details/ui/screens/job_details_screen.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import 'package:shaghalni/features/jobs_list/ui/screens/jobs_list_screen.dart';
import 'package:shaghalni/features/language/ui/screen/language_screen.dart';
import 'package:shaghalni/features/notification/ui/screen/notification_screen.dart';
import 'package:shaghalni/features/on_boarding/logic/cubit/page_cubit.dart';
import 'package:shaghalni/features/on_boarding/ui/screen/on_boarding_screen.dart';
import 'package:shaghalni/features/profile/logic/profile_cubit.dart';
import 'package:shaghalni/features/profile/ui/screen/profile_screen.dart';
import 'package:shaghalni/features/setting/ui/screen/terms_and_conditions_screen.dart';
import '../../features/auth/login/ui/widgets/login_screen.dart';
import '../../features/auth/otp/ui/widgets/otp_screen.dart';
import '../../features/auth/welcome/ui/widgets/welcome_screen.dart';
import '../../features/blog_details/ui/screens/blog_details_screen.dart';

class AppRouting {
  Route? onGenerateRoute(RouteSettings settings) {
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

      case Routes.blogDetails:
        final blogModel = settings.arguments as BlogModel?;

        return MaterialPageRoute(
            builder: (context) => BlogDetailsScreen(
                  blogModel: blogModel,
                ));

      case Routes.language:
        return MaterialPageRoute(builder: (context) => const LanguageScreen());

      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => PageCubit(),
                  child: const OnBoardingScreen(),
                ));

      case Routes.addJob:
        JobModel? jobModel = null;
        if (settings.arguments != null) {
          jobModel = settings.arguments as JobModel;
        }

        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) =>
                      getIt<JobFormCubit>()..getCategoryAndCity(jobModel),
                  child: JobFormScreen(
                    jobModel: jobModel,
                  ),
                ));

      case Routes.jobsList:
        return MaterialPageRoute(
          builder: (context) {
            int? index = null;
            if (settings.arguments != null) index = settings.arguments as int;

            return BlocProvider(
              create: (context) => getIt<JobsListCubit>()..getCategories(index),
              child: const JobsListScreen(),
            );
          },
        );

      case Routes.category:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<CategoryCubit>()..getCategories(),
                  child: const CategoryScreen(),
                ));

      case Routes.jobDetails:
        return MaterialPageRoute(
          builder: (context) {
            final String jobId = settings.arguments as String;
            return BlocProvider(
              create: (context) =>
                  JobDetailsCubit(getIt())..getJobDetails(jobId),
              child: const JobDetailsScreen(),
            );
          },
        );

      case Routes.terms:
        return MaterialPageRoute(
            builder: (context) => TermsAndConditionsScreen());

      case Routes.notification:
        return MaterialPageRoute(builder: (context) => NotificationScreen());

      case Routes.profile:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ProfileCubit(getIt() , getIt()),
                  child: ProfileScreen(),
                ));

      default:
        return null;
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
