import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerSlider extends StatelessWidget {
  const CustomShimmerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
            baseColor: ColorsManager.grey,
            highlightColor: Colors.white,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorsManager.grey,
              ),
            ),
          );
  }
}
