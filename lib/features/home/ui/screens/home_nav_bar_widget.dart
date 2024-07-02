import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
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
      create: (context) => HomeCubit(getIt(), getIt())
        ..getCategoriesAndJobs(),
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
        backgroundColor: Colors.blue,
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
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNavIcon(FontAwesomeIcons.house, 0),
            buildNavIcon(FontAwesomeIcons.businessTime, 1),
            horizontalSpace(40), // Space for FAB
            buildNavIcon(FontAwesomeIcons.newspaper, 2),
            buildNavIcon(FontAwesomeIcons.userGear, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavIcon(IconData icon, int index) {
    return SizedBox(
      width: 50,
      height: 50,
      child: IconButton(
        iconSize: 30,
        icon: Icon(
          icon,
          color: currentIndex == index ? AppColors.primaryColor : AppColors.darkBlue,
          size: 22,
        ),
        onPressed: () {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
