import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/job_grid_view_list.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_header_section.dart';

class JobListSection extends StatelessWidget {
  const JobListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaderSection(
          text: "Recently added jobs",
        ),
        verticalSpace(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: JobGridViewList(),
        ),
      ],
    );
  }
}

