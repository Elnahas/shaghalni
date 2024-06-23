import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/jobs_shimmer_loading.dart';

import '../../../../core/data/models/job_model.dart';
import '../../../home/ui/widgets/job_section/job_grid_view_list.dart';
import '../../logic/jobs_list_state.dart';

class JobsListBlocBuilder extends StatelessWidget {
  const JobsListBlocBuilder({
    super.key,
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
          jobsListSuccess: (jobsList) => setupSuccess(jobsList.jobList),
          jobsListFailure: (jobsList) => setupError(jobsList.error),
          jobsListLoading: (jobsList) => setupLoading(),
          noResultsFound: (jobsList) => setupNoResultsFound(),
          orElse: () => Container(),
        );
      },
    );
  }

  Widget setupSuccess(List<JobModel> jobList) {
    return JobGridViewList(jobList: jobList);
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
          Text("No results found" , style: AppTextStyles.font14BoldRockBlue,),
          verticalSpace(10),
          Text("Try using different search terms" , style: AppTextStyles.font12DarkBlueRegular,),

        ],
      ),

    );
  }
}
