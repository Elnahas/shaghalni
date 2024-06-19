import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class JobDetailsSection extends StatelessWidget {
  const JobDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Job Details",
            style: AppTextStyles.font14BoldBlue,
          ),
          verticalSpace(20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel luctus dolor. Sed tincidunt, lorem in rutrum gravida, nisi tortor feugiat ipsum, id bibendum odio nisi a tortor. Donec nec nisl id nulla luctus commodo. Proin tincidunt, nisl a ultricies tincidunt, enim dui iaculis purus, eget tincidunt orci risus eu lorem.  Sed id ultrices erat.  ",
            style: AppTextStyles.font12BlackRegular,
          ),
        ]));
  }
}