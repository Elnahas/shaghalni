import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/home/ui/screens/home_screen.dart';

class HomeNavBarWidget extends StatefulWidget {
  const HomeNavBarWidget({super.key});

  @override
  State<HomeNavBarWidget> createState() => _HomeNavBarWidgetState();
}

class _HomeNavBarWidgetState extends State<HomeNavBarWidget> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){


          }, icon: const Icon(Icons.menu)),
          title: Text("شغلنى" , style: TextStyles.font24BoldBlack,),
        ),
        
      ),
      body: SafeArea(child: screens[currentIndex]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape:const CircleBorder(),
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
              buildNavIcon(Icons.home, 0),
              buildNavIcon(Icons.search, 1),
              horizontalSpace(40), // Space for FAB
              buildNavIcon(Icons.notifications, 2),
              buildNavIcon(Icons.settings, 3),
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
          color: currentIndex == index ? Colors.blue : Colors.black,
          size: 30,
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
