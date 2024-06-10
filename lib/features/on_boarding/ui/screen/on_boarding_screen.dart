import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/on_boarding/data/on_boarding_model.dart';
import 'package:shaghalni/features/on_boarding/ui/widgets/on_boarding_item.dart';

import '../widgets/bottom_section.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController myController = PageController();
  bool isLastScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return OnBoardingItem(
                        controller: myController,
                        imagePath: OnBoardingModel.onBoardingList[index].imagePath,
                        title: OnBoardingModel.onBoardingList[index].title,
                        subTitle: OnBoardingModel.onBoardingList[index].subTitle);
                  },
                  controller: myController,
                  onPageChanged: (page) {
                    setState(() {
                      isLastScreen = (page == 3);
                    });
                  },
                ),
              ),
              BottomSection(
                isLastScreen: isLastScreen,
                controller: myController,
              ),
              verticalSpace(15)
            ],
          ),
        ),
      ),
    );
  }
}
