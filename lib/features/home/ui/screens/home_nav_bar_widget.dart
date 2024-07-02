import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/home/logic/home_cubit.dart';
import 'package:shaghalni/features/home/ui/screens/home_screen.dart';

import '../../../blog/ui/screens/blog_screen.dart';

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
    Container(),
    BlogScreen(),
    Container(),
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
            buildNavIcon("Home",FontAwesomeIcons.house, 0),
            buildNavIcon("Request",FontAwesomeIcons.businessTime, 1),
            horizontalSpace(40), // Space for FAB
            buildNavIcon("Blog",FontAwesomeIcons.newspaper, 2),
            buildNavIcon("Profile",FontAwesomeIcons.userGear, 3),
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
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
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
                      : AppColors.deepGrey,
                  size: 17,
                ),
                Expanded(
                    child: Text(
                  title,
                  style: AppTextStyles.font12DarkBlueRegular.copyWith(
                      color: currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.deepGrey),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
