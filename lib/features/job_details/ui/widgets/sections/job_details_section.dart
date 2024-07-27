import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class JobDetailsSection extends StatelessWidget {
  final String jobDescription;
  const JobDetailsSection({super.key, required this.jobDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            S.of(context).job_details,
            style: AppTextStyles.font14BoldBlue,
          ),
          verticalSpace(20),
          Text(
            jobDescription,
            style: AppTextStyles.font12BlackRegular,
          ),
        ]));
  }
}
