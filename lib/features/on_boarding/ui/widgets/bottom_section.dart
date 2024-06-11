import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routing/routes.dart';

class BottomSection extends StatelessWidget {
  final PageController controller;
  final bool isLastScreen;
  final int currentPage;

  const BottomSection({
    super.key,
    required this.controller,
    required this.isLastScreen,
    required this.currentPage,
  });

  double getPercent() {
    return (currentPage + 1) / 4;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: ExpandingDotsEffect(dotHeight: 10),
          ),
          CircularPercentIndicator(
            radius: 40,
            animation: true,
            animationDuration: 300,
            percent: getPercent(),
            animateFromLastPercent: true,
            progressColor: ColorsManager.primaryColor,
            center: CircleAvatar(
              radius: 30,
              backgroundColor: ColorsManager.primaryColor,
              child: IconButton(
                  onPressed: () {
                    isLastScreen
                        ? {
                            SharedPrefHelper.setData(SharedPrefKeys.hasSeenOnboarding, true),
                            context.pushNamedAndRemoveUntil(
                              Routes.login,
                              predicate: (Route<dynamic> route) => false,
                            )
                          }
                        : controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                  },
                  icon: Icon(
                    isLastScreen ? Icons.check : Icons.keyboard_arrow_right,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
