import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'job_items_grid_view_widget.dart';

class JobGridViewList extends StatelessWidget {
  final List<JobModel> jobList;
  final bool isLoadingMore;
  final bool hasMoreData;
  final bool? isShrinkWrap;
  final ScrollPhysics? physics;
  final ScrollController? scrollController;

  const JobGridViewList(
      {super.key,
      required this.jobList,
      this.isLoadingMore = false,
      this.isShrinkWrap = false,
      this.physics,
      this.scrollController,
      this.hasMoreData = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on the width
        int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;

        return CustomScrollView(
          physics: physics ?? BouncingScrollPhysics(),
          shrinkWrap: isShrinkWrap ?? false,
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                mainAxisExtent: 345.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == jobList.length) {
                    if (isLoadingMore) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  }
                  return JobItemsGridViewWidget(
                    jobModel: jobList[index],
                    index: index,
                  );
                },
                childCount: jobList.length,
              ),
            ),
            if (isLoadingMore || !hasMoreData)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: isLoadingMore
                        ? CircularProgressIndicator()
                        : SizedBox.shrink(), // No more data
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
