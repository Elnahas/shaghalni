import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/data/enum/job_status.dart';
import '../../../../core/data/models/job_model.dart';
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
          child: context.read<AddJobCubit>().currentStep == 2
              ? AppTextButton(
                  isLoading: state is AddJobLoading,
                  buttonText: 'Submit',
                  onPressed: () {
                    validateAddJob(context);
                  })
              : AppTextButton(
                  buttonText: 'Next',
                  onPressed: () {
                    context.read<AddJobCubit>().pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
        );
      },
    );
  }

  void validateAddJob(BuildContext context) {
    var _cubit = context.read<AddJobCubit>();
    if (_cubit.formKey.currentState!.validate()) {
      var uuid = const Uuid();
      String customId = uuid.v4();

      final job = JobModel(
          id: customId,
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
