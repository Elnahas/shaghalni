import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/on_boarding/data/on_boarding_model.dart';
import 'package:shaghalni/features/on_boarding/ui/widgets/on_boarding_item.dart';

import '../../logic/cubit/page_cubit.dart';
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
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          myController.previousPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        actions: [
          TextButton(
              onPressed: () {
                myController.animateToPage(3 , duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
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
                        imagePath:
                            OnBoardingModel.onBoardingList[index].imagePath,
                        title: OnBoardingModel.onBoardingList[index].title,
                        subTitle:
                            OnBoardingModel.onBoardingList[index].subTitle);
                  },
                  controller: myController,
                  onPageChanged: (page) {
                    context.read<PageCubit>().setPage(page);
                  },
                ),
              ),
              BlocBuilder<PageCubit, int>(
                builder: (context, currentPage) {
                  return BottomSection(
                    isLastScreen: currentPage ==3,
                    controller: myController,
                     currentPage: currentPage,
                  );
                },
              ),
              verticalSpace(15)
            ],
          ),
        ),
      ),
    );
  }
}
