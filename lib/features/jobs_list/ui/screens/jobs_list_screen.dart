import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_state.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/category_bloc_builder.dart';
import '../widgets/jobs_list_bloc_builder.dart';
import '../widgets/top_bar_search.dart';

class JobsListScreen extends StatelessWidget {
  const JobsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Jobs"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: TopBarSearch()),
                  verticalSpace(20),
                  CategoryBlocBuilder(),
                  verticalSpace(10),
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 14.w),
            //   child: Row(
            //     children: [
            //       Text(
            //         "Results : 10",
            //         style: AppTextStyles.font12BlackRegular,
            //       ),
            //       Spacer(),
            //       AppControlListOrGrid(isGridView: ValueNotifier<bool>(true)),
            //     ],
            //   ),
            // ),
            verticalSpace(10),
            // Expanded(
            //   child: SingleChildScrollView(
            //     physics: BouncingScrollPhysics(),
            //     child: Container(
            //       padding: EdgeInsets.symmetric(horizontal: 14.w),
            //       child: JobsListBlocBuilder(),
            //     ),
            //   ),
            // ),

            Expanded(
              child: BlocBuilder<JobsListCubit, JobsListState>(
                      builder: (context, state) {
                       if (state is JobsListLoading) {
              return Center(child: CircularProgressIndicator());
                        } else if (state is JobsListSuccess) {
              return NotificationListener<ScrollEndNotification>(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index == state.jobList.length) {
                      if (state.isLoadingMore) {
                        return Container(
                          color: Colors.red,
                          key: ValueKey('Loader'),
                          width: double.infinity,
                          height: 100,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }
                    final item = state.jobList[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      height: 150.h,
                      color: Colors.lightBlue,
                      child: ListTile(
                        key: ValueKey(item),
                        title: Text(
                          item.title,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                  itemCount: state.jobList.length + 1,
                ),
                onNotification: (scrollEnd) {
                  if (scrollEnd.metrics.atEdge && scrollEnd.metrics.pixels > 0) {
                    context.read<JobsListCubit>().fetchMoreJobs();
                  }
                  return true;
                },
              );
                        } else if (state is JobsListFailure) {
              return Center(child: Text('Error: ${state.error}'));
                        } else {
              return Center(child: Text('Unknown State'));
                        }
                      },
                    ),
            ),
          ],
        ));
  }
}
