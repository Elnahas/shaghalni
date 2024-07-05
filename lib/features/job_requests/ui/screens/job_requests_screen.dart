import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_cubit.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_state.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../widgets/job_requests_list_view.dart';
import '../widgets/job_status_list_view.dart';

class JobRequestsScreen extends StatelessWidget {
  const JobRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Requests',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          JobStatusListView(),
          verticalSpace(10),
          BlocBuilder<JobRequestsCubit, JobRequestsState>(
            builder: (context, state) {

             return state.maybeWhen(
                jobRequestsLoading: () => setupLoading(),
                jobRequestsFailure: (error) => setupError(error),
                jobRequestsSuccess: (jobRequests) => setupSuccess(jobRequests),
                orElse: () => Container(),
              );

              
            },
          )
        ],
      ),
    );
  }
  
  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
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

Widget setupSuccess(List<JobModel> jobRequests) {
    return JobRequestsListView(jobsList:jobRequests);
}
