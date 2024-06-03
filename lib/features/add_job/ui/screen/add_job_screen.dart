import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/data/enum/job_status.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/core/widgets/shimmer_list_widget.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';
import 'package:uuid/uuid.dart';
import '../widgets/add_job_bloc_listener.dart';
import '../widgets/step_indicator_widgets.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  late final AddJobCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<AddJobCubit>();
    _cubit.getCategoryAndCity();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          Navigator.pop(context);
        } else {
          await onWillPop(context, 'Are you sure you want to exit?');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.lighterGray,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Job Vacancy Announcement',
            style: TextStyles.font18BoldBlack,
          ),
          leading: IconButton(
            onPressed: () {
              if (_cubit.currentStep > 1) {
                _cubit.previousStep();
              } else {
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.black,
            ),
          ),
        ),
        backgroundColor: ColorsManager.lighterGray,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: BlocBuilder<AddJobCubit, AddJobState>(
            buildWhen: (previous, current) =>
                current is CategoryAndCityLoading ||
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
          ),
        ),
      ),
    );
  }

  Widget _buildContent(AddJobState state) {
    switch (state) {
      case CategoryAndCityLoading _:
        return const ShimmerList();
      case CategoryAndCitySuccess _:
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
          views: 0,
          postedBy:
              PostedBy(phoneNumber: "5656", userId: "userId", name: "name"));
      _cubit.addJob(job);
    }
  }
}
