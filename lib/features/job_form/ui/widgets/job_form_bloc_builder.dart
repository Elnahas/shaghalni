import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_cubit.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_state.dart';
import 'package:shaghalni/features/job_form/ui/widgets/job_form_bloc_listener.dart';
import 'package:shaghalni/features/job_form/ui/widgets/step_indicator_widgets.dart';

import '../../../../core/data/enum/job_status.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../../../../generated/l10n.dart';

class JobFormBlocBuilder extends StatefulWidget {
  const JobFormBlocBuilder({super.key});

  @override
  State<JobFormBlocBuilder> createState() => _JobFormBlocBuilderState();
}

class _JobFormBlocBuilderState extends State<JobFormBlocBuilder> {
  late final JobFormCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<JobFormCubit>();
    _cubit.getCategoryAndCity(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobFormCubit, JobFormState>(
      buildWhen: (previous, current) =>
          current is CategoryAndCityLoading ||
          current is FormLoading ||
          current is CategoryAndCitySuccess ||
          current is UpdateSteps,
      builder: (context, state) {
        return Column(
          children: [
            StepIndicator(
              currentStep: _cubit.currentStep,
              totalSteps: _cubit.totalSteps,
            ),
            Expanded(
              child: _buildContent(state),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _cubit.currentStep == _cubit.totalSteps
                  ? AppTextButton(
                      isLoading: state is FormLoading,
                      buttonText: S.of(context).submit,
                      onPressed: () {
                        validateAddJob();
                      })
                  : AppTextButton(
                      buttonText: S.of(context).next,
                      onPressed: () {
                        _cubit.nextStep();
                      },
                    ),
            ),
            const JobFormBlocListener(),
          ],
        );
      },
    );
  }

  Widget _buildContent(JobFormState state) {
    switch (state) {
      case CategoryAndCityLoading _:
        return const ShimmerList();
      case CategoryAndCitySuccess _:
      case FormLoading _:
      case UpdateSteps _:
        return _cubit.getCurrentWidget();
      default:
        return Container();
    }
  }

  void validateAddJob() {
    if (_cubit.formKey.currentState!.validate()) {

      var posted_by = PostedBy(
          phoneNumber: userModel!.phoneNumber,
          userId: userModel!.uid,
          userName: userModel!.fullName);
      if(_cubit.selectedGender == null){

        showSnackBar(context, S.of(context).pleaseSelectGender);
        
        return;
      }

            if(_cubit.selectedJobType == null){

        showSnackBar(context, S.of(context).please_select_job_type);
        
        return;
      }



      final job = JobModel(
        jobType: _cubit.selectedJobType!,
          postedBy: posted_by,
          experienceRange: ExperienceRange(
              maxExperience: _cubit.maxExperience,
              minExperience: _cubit.minExperience),
          gender: _cubit.selectedGender!,
          title: _cubit.jobTitleController.text,
          description: _cubit.jobDescriptionController.text,
          city: _cubit.city,
          category: _cubit.category,
          salary: double.tryParse(_cubit.jobSalaryController.text) ?? 0.0,
          isHideSalary: _cubit.isHideSalary,
          status: JobStatus.pending,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          views: 0);
      _cubit.addJob(job);
    }
  }
}
