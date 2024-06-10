import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import '../../../../core/helpers/spacing.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.controller,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  final PageController controller;
  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 320.h,
            width: 320.w,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(25),
          Text(
            title,
            style: TextStyles.font14BlackW300,
          ),
          verticalSpace(10),
          Text(
            subTitle,
            style: TextStyles.font14LightGrayRegular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
