import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/spacing.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/add_job_cubit.dart';

class AddJobForm extends StatefulWidget {
  const AddJobForm({super.key});

  @override
  State<AddJobForm> createState() => _AddJobFormState();
}

class _AddJobFormState extends State<AddJobForm> {

  late TextEditingController jobTitleController;
  late TextEditingController jobDescriptionController;
  late TextEditingController jobSalaryController;

  late final AddJobCubit _cubit;


  @override
  void initState() {

    _cubit = context.read<AddJobCubit>();

    jobTitleController = _cubit.jobTitleController;
    jobDescriptionController = _cubit.jobDescriptionController;
    jobSalaryController = _cubit.jobSalaryController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _cubit.formKey,
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
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "Please enter the title of the job";
                }
              },
              controller: _cubit.jobTitleController,
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
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Please enter the description of the job";
                  }
                } , controller: _cubit.jobDescriptionController),
            verticalSpace(20),
            Text(
              "Salary",
              style: TextStyles.font18BoldBlack,
            ),
            verticalSpace(10),
            AppTextFormField(
                hintText: "Salary",
                keyboardType: TextInputType.number,
                validator: (value) {}, controller: _cubit.jobSalaryController),
            verticalSpace(20),
            CheckboxListTile(
              value: _cubit.isHideSalary,
              onChanged: (value) {
                setState(() {
                  _cubit.isHideSalary = value!;
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
