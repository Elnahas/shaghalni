import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/helpers/app_labels.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import '../../../../core/data/enum/gender.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/app_drop_down.dart';
import '../../../../generated/l10n.dart';
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
                labelText: S.of(context).job_title,
                hintText:S.of(context).job_title,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).enter_job_title;
                  }
                },
                controller: _cubit.jobTitleController,
              ),
              verticalSpace(20),
              AppTextFormField(
                  labelText: S.of(context).job_description,
                  hintText:S.of(context).job_description,
                  maxLines: 6,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).enter_job_description;
                    }
                  },
                  controller: _cubit.jobDescriptionController),
              verticalSpace(20),
              AppTextFormField(
                  labelText: S.of(context).salary,
                  hintText: S.of(context).salary,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (!_cubit.isHideSalary) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).enter_salary;
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
                title: Text( S.of(context).hide_salary
                  ,
                  style: AppTextStyles.font14BlackW300,
                ),
              ),
              verticalSpace(20),
              AppDropdown<JobType>(
                selectedValue: _cubit.selectedJobType,
                labelText: S.of(context).job_type,
                items: JobType.values,
                getLabel: (JobType jobType) {
                  return AppLabels.getJobTypeLabel(context,jobType);
                },
                onChanged: (JobType? newValue) {
                  setState(() {
                    _cubit.selectedJobType = newValue!;
                  });
                },
                hint: S.of(context).select_type,
              ),
              verticalSpace(20),
              ExperienceSlider(),
              verticalSpace(20),
              AppDropdown<Gender>(
                selectedValue: _cubit.selectedGender,
                labelText: S.of(context).select_type,
                items: Gender.values,
                getLabel: (Gender gender) {
                  return  AppLabels.getGenderLabel(context, gender);
                },
                onChanged: (Gender? newValue) {
                  setState(() {
                    _cubit.selectedGender = newValue!;
                  });
                },
                hint: S.of(context).select_type,
              ),
              verticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}
