import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              AppTextFormField(
                labelText: "Title of the job",
                hintText: "Title of the job",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the title of the job";
                  }
                },
                controller: _cubit.jobTitleController,
              ),
              verticalSpace(20),
              AppTextFormField(
                labelText: "Description of the job",
                  hintText: "Description of the job",
                  maxLines: 6,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the description of the job";
                    }
                  },
                  controller: _cubit.jobDescriptionController),
              verticalSpace(20),
              AppTextFormField(
                  labelText: "Salary",
                  hintText: "Salary",
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (!_cubit.isHideSalary) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the salary";
                      }
                    }
                  },
                  controller: _cubit.jobSalaryController),
              CheckboxListTile(
                value: _cubit.isHideSalary,
                onChanged: (value) {
                  setState(() {
                    _cubit.isHideSalary = value!;
                  });
                },
                title: Text(
                  "Hide the salary from the job advertisement",
                  style: AppTextStyles.font14BlackW300,
                ),
              ),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
