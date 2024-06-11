import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import '../widgets/app_bar_on_boarding.dart';
import '../widgets/on_boarding_bloc_builder.dart';
import '../widgets/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController myController = PageController();
  bool isLastScreen = false;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnBoarding(myController: myController),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              OnBoardingPageWidget(myController: myController),
              OnBoardingBlocBuilder(myController: myController),
              verticalSpace(15)
            ],
          ),
        ),
      ),
    );
  }
}
