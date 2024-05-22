import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class WelcomeTextWidgets extends StatelessWidget {
  const WelcomeTextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            textAlign: TextAlign.center,
            "Discover Your \n Dream Job here",
            style: TextStyles.font35SemiBoldBlue),
        verticalSpace(20),
        Text(
            "Explore all the existing job roles based on your \n interest and study major.",
            textAlign: TextAlign.center,
            style: TextStyles.font14BlackW300),
      ],
    );
  }
}
