import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_snack_bar.dart';
import '../../../../core/data/enum/job_status.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../logic/cubit/add_job_cubit.dart';
import '../../logic/cubit/add_job_state.dart';

class ButtonAddJobBlocBuilder extends StatelessWidget {
  const ButtonAddJobBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddJobCubit, AddJobState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: context.read<AddJobCubit>().currentStep == 3
              ? AppTextButton(
                  isLoading: state is AddJobLoading,
                  buttonText: 'Submit',
                  onPressed: () {
                    validateAddJob(context);
                  })
              : AppTextButton(
                  buttonText: 'Next',
                  onPressed: () {
                    context.read<AddJobCubit>().nextStep();
                  },
                ),
        );
      },
    );
  }

  void validateAddJob(BuildContext context) {
    var _cubit = context.read<AddJobCubit>();
    if (_cubit.formKey.currentState!.validate()) {

      if(_cubit.selectedGender == null){

        showSnackBar(context, "Please Select Gender");
        
        return;
      }

            if(_cubit.selectedJobType == null){

        showSnackBar(context, "Please Select Job Type");
        
        return;
      }

      var posted_by = PostedBy(
          phoneNumber: userModel!.phoneNumber,
          userId: userModel!.uid,
          userName: userModel!.fullName);

      final job = JobModel(
        jobType: _cubit.selectedJobType!,
          postedBy: posted_by,
          experienceRange: ExperienceRange(
              minExperience: _cubit.minExperience,
              maxExperience: _cubit.maxExperience),
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
