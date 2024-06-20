import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/date_helper.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_and_icon.dart';

class JobPostOnSection extends StatelessWidget {
  final DateTime jobDate;
  const JobPostOnSection({super.key, required this.jobDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        verticalSpace(20),
        AppTextAndIcon(text: DateHelper.formatCustomDate(jobDate), icon: Icons.calendar_month_outlined),
      ]),
    );
  }
}
