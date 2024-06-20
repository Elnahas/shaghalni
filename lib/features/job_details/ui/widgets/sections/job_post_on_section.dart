import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_and_icon.dart';

class JobPostOnSection extends StatelessWidget {
  final String jobDate;
  const JobPostOnSection({super.key, required this.jobDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Posed on",
          style: AppTextStyles.font14BoldBlue,
        ),
        verticalSpace(20),
        AppTextAndIcon(text: jobDate, icon: Icons.calendar_month_outlined),
      ]),
    );
  }
}
