import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/job_model.dart';

import 'job_items_grid_view_widget.dart';

class JobGridViewList extends StatelessWidget {
  final List<JobModel> jobList;
  const JobGridViewList({
    super.key,
    required this.jobList,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on the width
        int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: jobList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16.w,
            crossAxisSpacing: 16.w,
            mainAxisExtent: 345.h,
          ),
          itemBuilder: (context, index) => JobItemsGridViewWidget(
            jobModel: jobList[index],
            index: index,
          ),
        );
      },
    );
  }
}
