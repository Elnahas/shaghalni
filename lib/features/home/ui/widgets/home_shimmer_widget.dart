import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/category_shimmer_loading.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_header_section.dart';

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
          CategoryShimmerLoading(),
          const CustomHeaderSection(
            text: "Recently added jobs",
          ),
          verticalSpace(10),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: JobsShimmerLoading()),
        ],
      ),
    );
  }
}
