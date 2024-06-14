import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_header_section.dart';
import '../../../../core/widgets/custom_shimmer_image.dart';

class HomeShimmerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeaderSection(
            text: "Categories",
          ),
          verticalSpace(10),
          SizedBox(
            height: 50.h,
            width: double.infinity,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CategoryItemsShimmerWidget(),
              itemCount: 4,
            ),
          ),
          const CustomHeaderSection(
            text: "Recently added jobs",
          ),
          verticalSpace(10),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Determine the number of columns based on the width
                  int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 16.w,
                      crossAxisSpacing: 16.w,
                      mainAxisExtent: 345.h,
                    ),
                    itemBuilder: (context, index) =>
                        JobItemsGridViewShimmerWidget(),
                  );
                },
              )),
        ],
      ),
    );
  }
}

class CategoryItemsShimmerWidget extends StatelessWidget {
  const CategoryItemsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: 100.w,
                height: 20.h,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobItemsGridViewShimmerWidget extends StatelessWidget {
  const JobItemsGridViewShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lighterGrey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomShimmerImage(
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              borderRadius: 12.r),
          verticalSpace(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => LineShimmerWidget(),
                    separatorBuilder: (context, index) => verticalSpace(10),
                    itemCount: 6)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LineShimmerWidget extends StatelessWidget {
  const LineShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[50]!,
      child: Container(
        width: double.infinity,
        height: 20,
        color: Colors.grey[200],
      ),
    );
  }
}
