import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/core/widgets/shimmer_list_widget.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';

import '../../../../core/widgets/select_list_widget.dart';
import '../widgets/add_job_bloc_listener.dart';
import '../widgets/add_job_form.dart';
import '../widgets/step_indicator_widgets.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  int currentStep = 1;
  int totalSteps = 3;

  int selectedCategoryIndex = 0;
  int selectedCityIndex = 0;
  final List<String> categories =
      List.generate(20, (index) => 'Category $index');
  final List<String> cities = List.generate(20, (index) => 'City $index');

  @override
  void initState() {
    context.read<AddJobCubit>().getCategories();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> steps = [
      SelectListWidget(
        title: "Select Category",
        items: categories,
        initialSelectedIndex: selectedCategoryIndex,
        onItemSelected: (index) {
          setState(() {
            selectedCategoryIndex = index;
          });
        },
      ),
      SelectListWidget(
        title: "Select City",
        items: cities,
        initialSelectedIndex: selectedCityIndex,
        onItemSelected: (index) {
          setState(() {
            selectedCityIndex = index;
          });
        },
      ),
      const AddJobForm(),
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          Navigator.pop(context);
        } else {
          await onWillPop(context, "Are you sure you want to exit?");
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
              if (currentStep > 1) {
                setState(() {
                  currentStep--;
                });
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
          child: Column(
            children: [
              StepIndicator(
                currentStep: currentStep,
                totalSteps: totalSteps,
              ),
              Expanded(
                child: BlocBuilder<AddJobCubit, AddJobState>(
                  builder: (context, state) {
                    if(state is CategoryLoading)
                    {
                      return const ShimmerList();
                    }
                    else if(state is CategorySuccess)
                    return steps[currentStep - 1];
                    else return Container();
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: currentStep == totalSteps
                      ? AppTextButton(buttonText: "Submit", onPressed: () {})
                      : AppTextButton(
                          buttonText: "Next",
                          onPressed: () {
                            setState(() {
                              if (currentStep < totalSteps) currentStep++;
                            });
                          })),
              const AddJobBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
