import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/on_boarding/ui/widgets/on_boarding_item.dart';

import '../../data/on_boarding_model.dart';
import '../../logic/cubit/page_cubit.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.myController,
  });

  final PageController myController;

  @override
  Widget build(BuildContext context) {
    final onboardingList = OnBoardingModel.onBoardingList;

    return Expanded(
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          final item = onboardingList[index];
          return OnBoardingItem(
            controller: myController,
            imagePath: item.imagePath,
            title: item.getTitle(context),
            subTitle: item.getSubTitle(context),
          );
        },
        controller: myController,
        onPageChanged: (page) {
          context.read<PageCubit>().setPage(page);
        },
      ),
    );
  }
}
