import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/data/enum/job_status.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
class JobStatusItem extends StatelessWidget {
  const JobStatusItem({
    super.key,
    required this.selectedStateJobIndex, required this.index,
  });

  final int selectedStateJobIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10.h,
        ),
        width: 80.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selectedStateJobIndex == index
              ? AppColors.primaryColor
              : AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
            child: Text(
          JobStatus.values[index].name,
          style: AppTextStyles.font12BlackRegular.copyWith(
              color: selectedStateJobIndex == index
                  ? AppColors.white
                  : AppColors.black),
        )));
  }
}