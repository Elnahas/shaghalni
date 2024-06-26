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
      {super.key, required this.jobList, this.isLoadingMore = false, this.isShrinkWrap = false, this.physics, this.scrollController,  this.hasMoreData = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on the width
        int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;

        return GridView.builder(
          controller: scrollController,
          physics: physics ?? const BouncingScrollPhysics(),
          shrinkWrap: isShrinkWrap ?? false,
          itemCount: jobList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16.w,
            crossAxisSpacing: 16.w,
            mainAxisExtent: 345.h,
          ),
          itemBuilder: (context, index) {
            if (index == jobList.length) {
              if (isLoadingMore) {
                return Container(
                  key: ValueKey('Loader'),
                  width: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
               else if (!hasMoreData) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        child: Text('No more data'),
                      );
                    }
              
               else {
                return SizedBox.shrink();
              }
            }
            return JobItemsGridViewWidget(
              jobModel: jobList[index],
              index: index,
            );
          },
        );
      },
    );
  }
}
