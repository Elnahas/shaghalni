import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'job_items_grid_view_widget.dart';

class JobGridViewList extends StatelessWidget {
  const JobGridViewList({
    super.key,
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
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16.w,
            crossAxisSpacing: 16.w,
            childAspectRatio: 0.50,
          ),
          itemBuilder: (context, index) => const JobItemsGridViewWidget(),
        );
      },
    );
  }
}