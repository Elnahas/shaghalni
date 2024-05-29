import 'package:flutter/material.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';

import '../widgets/step_indicator_widgets.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  int currentStep = 1;
  int totalSteps = 4;

  @override
  Widget build(BuildContext context) {
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
            icon: Icon(
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
                child: SelectCategoryListWidget(),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
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

class SelectCategoryListWidget extends StatefulWidget {
  const SelectCategoryListWidget({super.key});

  @override
  State<SelectCategoryListWidget> createState() =>
      _SelectCategoryListWidgetState();
}

class _SelectCategoryListWidgetState extends State<SelectCategoryListWidget> {
  int currentIndexCategory = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndexCategory == index ? Colors.blue : Colors.white,
          ),
          child: Material(
            color: Colors
                .transparent, // Important to make the ripple effect visible
            borderRadius: BorderRadius.circular(10),

            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                setState(() {
                  currentIndexCategory = index;
                });
              },
              child: ListTile(
                selected: currentIndexCategory == index,
                selectedColor: Colors.white,
                trailing: Icon(Icons.chevron_right),
                title: Text('Item $index'),
              ),
            ),
          ),
        );
      },
    );
  }
}
