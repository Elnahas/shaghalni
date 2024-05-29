import 'package:flutter/material.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';

import '../../../../core/widgets/select_list_widget.dart';
import '../widgets/step_indicator_widgets.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  int currentStep = 1;
  int totalSteps = 4;

  int selectedCategoryIndex = 0;
  int selectedCityIndex = 0;
  final List<String> categories =
      List.generate(20, (index) => 'Category $index');
  final List<String> cities = List.generate(20, (index) => 'City $index');

  @override
  Widget build(BuildContext context) {

    List<Widget> steps = [
      SelectListWidget(
        items: categories,
        initialSelectedIndex: selectedCategoryIndex,
        onItemSelected: (index) {
          setState(() {
            selectedCategoryIndex = index;
          });
        },
      ),
      SelectListWidget(
        items: cities,
        initialSelectedIndex: selectedCityIndex,
        onItemSelected: (index) {
          setState(() {
            selectedCityIndex = index;
          });
        },
      )
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
          backgroundColor: ColorsManager.lightGrey,
          elevation: 0,
          centerTitle: true,
          title: Text('Add Job'),
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
        backgroundColor: ColorsManager.lightGrey,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              StepIndicator(
                currentStep: currentStep,
                totalSteps: totalSteps,
              ),
              Expanded(
                child: steps[currentStep - 1],
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
            ],
          ),
        ),
      ),
    );
  }
}

