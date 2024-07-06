import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/app_assets.dart';
import 'package:shaghalni/core/widgets/app_empty_state.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/scroll_controller_listener.dart';

import '../../../../core/data/models/job_model.dart';
import '../../../home/ui/widgets/job_section/job_grid_view_list.dart';
import '../../logic/jobs_list_state.dart';

class JobsListBlocBuilder extends StatelessWidget {
  final ScrollController scrollController;

  const JobsListBlocBuilder({
    super.key,
    required this.scrollController,
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
          jobsListSuccess: (state) => setupSuccess(
              state.jobList,
              state.isLoadingMore,
              context,
              scrollController,
              context.read<JobsListCubit>().hasMoreData),
          jobsListFailure: (state) => setupError(state.error),
          jobsListLoading: (state) => setupLoading(),
          noResultsFound: (state) => setupNoResultsFound(),
          orElse: () => Container(),
        );
      },
    );
  }

  Widget setupSuccess(
      List<JobModel> jobList,
      bool isLoadingMore,
      BuildContext context,
      ScrollController scrollController,
      bool hasMoreData) {
    return ScrollControllerListener(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: scrollController,
          child: JobGridViewList(
            jobList: jobList,
            isLoadingMore: isLoadingMore,
            hasMoreData: hasMoreData,
            isShrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
        onEndOfScroll: () {
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
      child: AppEmptyState(
          subtitle: "Try using different search terms",
          title: "No results found",
          svgAssetPath: AppAssets.noResultsFoundSearch),
    );
  }
}
