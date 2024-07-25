import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/spacing.dart';

import '../../../../core/data/enum/gender.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/app_drop_down.dart';
import '../../logic/cubit/job_form_cubit.dart';
import 'experience_slider.dart';

class JobForm extends StatefulWidget {
  const JobForm({super.key});

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  late TextEditingController jobTitleController;
  late TextEditingController jobDescriptionController;
  late TextEditingController jobSalaryController;

  late final JobFormCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<JobFormCubit>();

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
                contentPadding: EdgeInsets.all(0),
                value: _cubit.isHideSalary,
                onChanged: (value) {
                  setState(() {
                    _cubit.isHideSalary = value!;
                  });
                },
                title: Text(
                  "Hide the salary",
                  style: AppTextStyles.font14BlackW300,
                ),
              ),
              verticalSpace(20),
              AppDropdown<JobType>(
                selectedValue: _cubit.selectedJobType,
                labelText: 'Job type',
                items: JobType.values,
                getLabel: (JobType jobType) {
                  return getJobTypeLabel(jobType);
                },
                onChanged: (JobType? newValue) {
                  setState(() {
                    _cubit.selectedJobType = newValue!;
                  });
                },
              ),
              verticalSpace(20),
              ExperienceSlider(),
              verticalSpace(20),
              AppDropdown<Gender>(
                selectedValue: _cubit.selectedGender,
                labelText: 'Select type',
                items: Gender.values,
                getLabel: (Gender gender) {
                  return getGenderJobLabel(gender);
                },
                onChanged: (Gender? newValue) {
                  setState(() {
                    _cubit.selectedGender = newValue!;
                  });
                },
              ),
              verticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}