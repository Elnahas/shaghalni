import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/blog/logic/blog_list/blog_list_cubit.dart';
import 'package:shaghalni/features/home/logic/home_cubit.dart';
import 'package:shaghalni/features/home/ui/screens/home_screen.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_cubit.dart';
import 'package:shaghalni/features/setting/logic/setting_cubit.dart';
import 'package:shaghalni/features/setting/ui/screen/setting_screen.dart';

import '../../../../generated/l10n.dart';
import '../../../blog/ui/screens/blog_list_screen.dart';
import '../../../job_requests/ui/screens/job_requests_screen.dart';

class HomeNavBarWidget extends StatefulWidget {
  const HomeNavBarWidget({super.key});

  @override
  State<HomeNavBarWidget> createState() => _HomeNavBarWidgetState();
}

class _HomeNavBarWidgetState extends State<HomeNavBarWidget> {
  int currentIndex = 0;
  List<Widget> screens = [
    BlocProvider(
      create: (context) => HomeCubit(getIt(), getIt())..getCategoriesAndJobs(),
      child: HomeScreen(),
    ),
    BlocProvider(
      create: (context) => JobRequestsCubit(getIt())
        ..getJobRequests(userModel!.uid, status: Constants.viewAll),
      child: JobRequestsScreen(),
    ),
    BlocProvider(
      create: (context) => BlogListCubit(getIt())..getBlogs(),
      child: BlogListScreen(),
    ),
    BlocProvider(
      create: (context) => SettingCubit(getIt()),
      child: const SettingScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: screens[currentIndex]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        elevation: 10,
        onPressed: () {
          context.pushNamed(Routes.addJob);
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        elevation: 12,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavIcon(S.of(context).home, FontAwesomeIcons.house, 0),
            buildNavIcon(S.of(context).requests, FontAwesomeIcons.businessTime, 1),
            horizontalSpace(40), // Space for FAB
            buildNavIcon(S.of(context).blog, FontAwesomeIcons.newspaper, 2),
            buildNavIcon(S.of(context).profile, FontAwesomeIcons.userGear, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavIcon(String title, IconData icon, int index) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Column(
              children: [
                Icon(
                  icon,
                  color: currentIndex == index
                      ? AppColors.primaryColor
                      : AppColors.darkBlue,
                  size: 17,
                ),
                Expanded(
                    child: Text(
                  title,
                  style: AppTextStyles.font12DarkBlueRegular.copyWith(
                      color: currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.darkBlue),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
