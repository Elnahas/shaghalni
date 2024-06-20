
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';

class JobDetails extends StatelessWidget {
  final String title;
  final String value;

  const JobDetails({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.font12LightGrayRegular,
          ),
          verticalSpace(5),
          Text(
            value,
            style: AppTextStyles.font12BoldBlack,
          )
        ]);
  }
}
