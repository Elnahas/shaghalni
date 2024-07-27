import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_cubit.dart';
import 'package:shaghalni/features/job_requests/ui/widgets/job_requests_list_view.dart';

import '../../../../core/data/models/job_model.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/widgets/app_empty_state.dart';
import '../../../../generated/l10n.dart';
import '../../../jobs_list/ui/widgets/jobs_shimmer_loading.dart';
import '../../logic/cubit/job_requests_state.dart';

class JobRequestsBlocBuilder extends StatelessWidget {
  const JobRequestsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return            BlocBuilder<JobRequestsCubit, JobRequestsState>(
            builder: (context, state) {
              return state.maybeWhen(
                jobRequestsLoading: () => setupLoading(),
                noResultsFound: () => setupNoResultsFound(context),
                jobRequestsFailure: (error) => setupError(error),
                jobRequestsSuccess: (jobRequests) => setupSuccess(jobRequests),
                orElse: () => Container(),
              );
            },
          );
  }

    Widget setupLoading() {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(14),
      child: JobsShimmerLoading(),
    )) ;
  }

  Widget setupError(String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(error, style: TextStyle(color: Colors.red)),
      ),
    );
  }
}

Widget setupNoResultsFound(BuildContext context) {
  return Expanded(
      child: AppEmptyState(
          title: S.of(context).no_job_requests,
          subtitle: S.of(context).no_submitted_requests,
          svgAssetPath: AppAssets.noDataFound));
}

Widget setupSuccess(List<JobModel> jobRequests) {
  return JobRequestsListView(jobsList: jobRequests);
}

