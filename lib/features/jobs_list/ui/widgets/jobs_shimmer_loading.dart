import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/helpers/spacing.dart';

class JobsShimmerLoading extends StatelessWidget {
  const JobsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 18.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalSpace(12),
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 14.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalSpace(12),
                    Shimmer.fromColors(
                      baseColor: AppColors.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 14.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
