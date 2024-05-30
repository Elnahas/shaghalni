import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class AddJobForm extends StatefulWidget {
  const AddJobForm({super.key});

  @override
  State<AddJobForm> createState() => _AddJobFormState();
}

class _AddJobFormState extends State<AddJobForm> {
  bool isHideSalary = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text(
              "Title of the job",
              style: TextStyles.font18BoldBlack,
            ),
            verticalSpace(10),
            AppTextFormField(
              hintText: "Title of the job",
              validator: (value) {},
            ),
            verticalSpace(20),
            Text(
              "Description of the job",
              style: TextStyles.font18BoldBlack,
            ),
            verticalSpace(10),
            AppTextFormField(
                hintText: "Description of the job",
                maxLines: 6,
                validator: (value) {}),
            verticalSpace(20),
            Text(
              "Salary",
              style: TextStyles.font18BoldBlack,
            ),
            verticalSpace(10),
            AppTextFormField(
                hintText: "Salary",
                keyboardType: TextInputType.number,
                validator: (value) {}),
            verticalSpace(20),
            CheckboxListTile(
              value: isHideSalary,
              onChanged: (value) {
                setState(() {
                  isHideSalary = value!;
                });
              },
              title: Text(
                "Hide the salary from the job advertisement",
                style: TextStyles.font14BlackW300,
              ),
            ),
            verticalSpace(30),
            Text(
                "By clicking on the Publish Ad button, you agree to the terms of use and that all data is real and the Shaghalni application has no connection to it." ,style: TextStyles.font14BoldBlack,)
          ],
        ),
      ),
    );
  }
}
