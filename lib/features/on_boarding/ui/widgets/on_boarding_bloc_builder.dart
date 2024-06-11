import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/on_boarding/ui/widgets/bottom_section.dart';

import '../../logic/cubit/page_cubit.dart';

class OnBoardingBlocBuilder extends StatelessWidget {
  const OnBoardingBlocBuilder({
    super.key,
    required this.myController,
  });

  final PageController myController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentPage) {
        return BottomSection(
          isLastScreen: currentPage == 3,
          controller: myController,
          currentPage: currentPage,
        );
      },
    );
  }
}
