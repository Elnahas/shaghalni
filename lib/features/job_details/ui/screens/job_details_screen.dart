import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/job_details/logic/job_details_cubit.dart';
import 'package:shaghalni/features/job_details/logic/job_details_state.dart';
import '../widgets/sections/apply_section.dart';
import '../widgets/sections/job_details_section.dart';
import '../widgets/sections/job_header_section.dart';
import '../widgets/sections/requirements_section.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Job Details",
          style: AppTextStyles.font18WhiteMedium,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 80), // Padding to avoid overlap with the button

              child: BlocBuilder<JobDetailsCubit, JobDetailsState>(
                buildWhen: (previous, current) =>
                    current is JobDetailsSuccess ||
                    current is JobDetailsFailure,
                builder: (context, state) {
                  return state.maybeWhen(
                    jobDetailsLoading: () => setupLoading(),
                    jobDetailsFailure: (error) => setupError(error),
                    jobDetailsSuccess: (job) => setupSuccess(job),
                    orElse: () => const SizedBox.shrink(
                      child: Text("Error"),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ApplySection(),
          ),
        ],
      ),
    );
  }
}

Widget setupError(String error) {
  return Text(error);
}

Widget setupSuccess(JobModel job) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      JobHeaderSection(
        titleJob: job.title,
        postByName: job.postedBy!.userName,
        salary: job.salary,
        experienceRange: job.experienceRange!,
        jobType: job.jobType,
        location: job.city.name,
      ),
      verticalSpace(30),
      RequirementsSection(experienceRange: job.experienceRange! , gender: job.gender),
      verticalSpace(30),
      JobDetailsSection(jobDescription: job.description),
      verticalSpace(30),
    ],
  );
}

Widget setupLoading() {
  return Center(child: CircularProgressIndicator());
}
