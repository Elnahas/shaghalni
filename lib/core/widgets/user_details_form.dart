import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shaghalni/core/widgets/app_drop_down.dart';
import 'package:shaghalni/core/widgets/app_text_form_field.dart';

import '../../features/auth/signup/ui/widgets/profile_picture_widget.dart';
import '../../generated/l10n.dart';
import '../data/enum/gender.dart';
import '../helpers/app_labels.dart';
import '../helpers/date_picker_helper.dart';
import '../helpers/spacing.dart';

class UserDetailsForm extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController cityController;
  final TextEditingController birthDateController;
  final GlobalKey<FormState> formKey;
  final Function(DateTime) onDateSelected;
  final VoidCallback onCityTap;
  final File? initialProfileImageFile;
  final Function(File?)? onProfileImageSelected;
  final Gender? selectedGender;
  final Function(Gender) onGenderChanged;
  final DateTime? selectedDate;

  const UserDetailsForm({
    required this.firstNameController,
    required this.lastNameController,
    required this.cityController,
    required this.birthDateController,
    required this.formKey,
    required this.onDateSelected,
    this.selectedDate,
    required this.onCityTap,
    this.initialProfileImageFile,
    this.onProfileImageSelected,
    this.selectedGender,
    required this.onGenderChanged,
  });

  @override
  Widget build(BuildContext context) {

    final DatePickerHelper datePickerHelper =
        DatePickerHelper(dateController: birthDateController);

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicture(
            onImageSelected: onProfileImageSelected,
            initialImageFile: initialProfileImageFile,
          ),
          verticalSpace(20),
          Row(
            children: [
              Expanded(
                child: AppTextFormField(
                    labelText: S.of(context).firstName,
                    controller: firstNameController,
                    hintText: S.of(context).firstName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).please_enter_first_name;
                      }
                      return null;
                    }),
              ),
              horizontalSpace(10),
              Expanded(
                child: AppTextFormField(
                    labelText: S.of(context).lastName,
                    controller: lastNameController,
                    hintText: S.of(context).lastName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).please_enter_last_name;
                      }
                      return null;
                    }),
              )
            ],
          ),
          verticalSpace(20),
          AppTextFormField(
              labelText: S.of(context).city,
              suffixIcon: const Icon(Icons.arrow_drop_down),
              readOnly: true,
              onTap: onCityTap,
              controller: cityController,
              hintText: S.of(context).city,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).please_select_city;
                }
                return null;
              }),
          verticalSpace(20),
          AppTextFormField(
              labelText: S.of(context).birthDate,
              controller: birthDateController,
              hintText: S.of(context).birthDate,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).please_select_birth_date;
                }
                return null;
              },
              onTap: () async {
                await datePickerHelper.myShowDatePicker(
                    context, onDateSelected);
              },
              readOnly: true,
              suffixIcon: const Icon(Icons.calendar_month)),
          verticalSpace(20),
          AppDropdown<Gender>(
            selectedValue: selectedGender,
            labelText: S.of(context).select_type,
            items:
                Gender.values.where((gender) => gender != Gender.both).toList(),
            getLabel: (Gender gender) {
              return AppLabels.getGenderLabel(context, gender);
            },
            onChanged: (Gender? newValue) {
              onGenderChanged(newValue!);
            },
            hint: S.of(context).select_type,
          )
        ],
      ),
    );
  }
}
