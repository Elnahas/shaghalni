import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';
import 'package:shaghalni/features/add_job/ui/widgets/add_job_bloc_listener.dart';
import 'package:shaghalni/features/add_job/ui/widgets/step_indicator_widgets.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/data/enum/job_status.dart';
import '../../../../core/data/models/job_model.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';

class AddJobBlocBuilder extends StatefulWidget {
  const AddJobBlocBuilder({super.key});

  @override
  State<AddJobBlocBuilder> createState() => _AddJobBlocBuilderState();
}

class _AddJobBlocBuilderState extends State<AddJobBlocBuilder> {
  late final AddJobCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<AddJobCubit>();
    _cubit.getCategoryAndCity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddJobCubit, AddJobState>(
      buildWhen: (previous, current) =>
          current is CategoryAndCityLoading ||
          current is AddJobLoading ||
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
                      isLoading: state is AddJobLoading,
                      buttonText: 'Submit',
                      onPressed: () {
                        validateAddJob();
                      })
                  : AppTextButton(
                      buttonText: 'Next',
                      onPressed: () {
                        _cubit.nextStep();
                      },
                    ),
            ),
            const AddJobBlocListener(),
          ],
        );
      },
    );
  }

  Widget _buildContent(AddJobState state) {
    switch (state) {
      case CategoryAndCityLoading _:
        return const ShimmerList();
      case CategoryAndCitySuccess _:
      case AddJobLoading _:
      case UpdateSteps _:
        return _cubit.getCurrentWidget();
      default:
        return Container();
    }
  }

  void validateAddJob() {
    if (_cubit.formKey.currentState!.validate()) {
      var uuid = const Uuid();
      String customId = uuid.v4();

      var posted_by = PostedBy(
          phoneNumber: userModel!.phoneNumber,
          userId: userModel!.uid,
          userName: userModel!.fullName);

      final job = JobModel(
          postedBy: posted_by,
          experienceRange: ExperienceRange(
              maxExperience: _cubit.maxExperience,
              minExperience: _cubit.minExperience),
          gender: _cubit.selectedGender!,
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
