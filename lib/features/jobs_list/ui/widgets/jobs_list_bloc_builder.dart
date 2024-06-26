import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/scroll_controller_listener.dart';

import '../../../../core/data/models/job_model.dart';
import '../../../home/ui/widgets/job_section/job_grid_view_list.dart';
import '../../logic/jobs_list_state.dart';

class JobsListBlocBuilder extends StatelessWidget {

    final ScrollController scrollController;

  const JobsListBlocBuilder({
    super.key, required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {


    return BlocBuilder<JobsListCubit, JobsListState>(
      buildWhen: (previous, current) =>
          current is JobsListLoading ||
          current is JobsListSuccess ||
          current is NoResultsFound ||
          current is JobsListFailure,
      builder: (context, state) {
        return state.maybeMap(
          jobsListSuccess: (state) =>
              setupSuccess(state.jobList, state.isLoadingMore , context , scrollController , context.read<JobsListCubit>().hasMoreData),
          jobsListFailure: (state) => setupError(state.error),
          jobsListLoading: (state) => setupLoading(),
          noResultsFound: (state) => setupNoResultsFound(),
          orElse: () => Container(),
        );
      },
    );
  }

  Widget setupSuccess(List<JobModel> jobList, bool isLoadingMore , BuildContext context , ScrollController scrollController , bool hasMoreData) {
    return ScrollControllerListener(
      scrollController: scrollController,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller:  scrollController,
          child: JobGridViewList(
            jobList: jobList,
            isLoadingMore: isLoadingMore,
            hasMoreData: hasMoreData,
            isShrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          
          ),
        ),
        onEndOfScroll: (){
             context.read<JobsListCubit>().fetchMoreJobs();
        });
  }

  Widget setupError(String error) {
    return Container(child: Text(error));
  }

  Widget setupLoading() {
    return JobsShimmerLoading();
  }

  Widget setupNoResultsFound() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/svgs/no_results_found.svg"),
          Text(
            "No results found",
            style: AppTextStyles.font14BoldRockBlue,
          ),
          verticalSpace(10),
          Text(
            "Try using different search terms",
            style: AppTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
