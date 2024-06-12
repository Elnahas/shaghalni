import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerImage extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  const CustomShimmerImage({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey,
      highlightColor: Colors.white,
      child: Container(
        width: width.h,
        height: height.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: AppColors.grey,
        ),
      ),
    );
  }
}
