import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/job_grid_view_list.dart';
import '../../../../../core/data/models/job_model.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_header_section.dart';

class JobListSection extends StatelessWidget {
  final List<JobModel> jobList;
  const JobListSection({super.key, required this.jobList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderSection(
          text: "Recently added jobs",
          onPressed: () {
            context.pushNamed(Routes.jobsList);
          },
        ),
        verticalSpace(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: JobGridViewList(jobList: jobList),
        ),
      ],
    );
  }
}
