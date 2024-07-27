import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/profile_picture_widget.dart';
import '../../../../../core/data/enum/gender.dart';
import '../../../../../core/helpers/app_labels.dart';
import '../../../../../core/helpers/date_picker_helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_drop_down.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/select_list_widget.dart';
import '../../../../../generated/l10n.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late DatePickerHelper datePickerHelper;

  late TextEditingController birthDateController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController cityController;

  late final SignupCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<SignupCubit>();
    birthDateController = _cubit.birthDateController;
    firstNameController = _cubit.firstNameController;
    lastNameController = _cubit.lastNameController;
    cityController = _cubit.cityController;

    datePickerHelper = DatePickerHelper(dateController: birthDateController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _cubit.signupFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfilePicture(),
          verticalSpace(20),
          AppTextFormField(
              labelText: S.of(context).phoneNumber,
              readOnly: true,
              hintText: context.read<SignupCubit>().phoneNumber,
              validator: (value) {}),
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
              onTap: () async {
                await showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        padding: const EdgeInsets.all(14),
                        child: SelectListWidget(
                          items: _cubit.cityList,
                          title: S.of(context).select_city,
                          onItemSelected: (value) {
                            cityController.text = _cubit.cityList[value].name;
                            _cubit.selectedCityIndex = value;
                            Navigator.of(context).pop();
                          },
                          initialSelectedIndex: _cubit.selectedCityIndex,
                          itemBuilder: (city) {
                            return city.name;
                          },
                        ));
                  },
                );
              },
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
                await datePickerHelper.myShowDatePicker(context);
              },
              readOnly: true,
              suffixIcon: const Icon(Icons.calendar_month)),
          verticalSpace(20),
          AppDropdown<Gender>(
            selectedValue: _cubit.selectedGender,
            labelText: S.of(context).select_type,
            items: Gender.values.where((gender) => gender != Gender.both).toList(),
            getLabel: (Gender gender) {
              return AppLabels.getGenderLabel(context, gender);
            },
            onChanged: (Gender? newValue) {
              setState(() {
                _cubit.selectedGender = newValue!;
              });
            },
            hint: S.of(context).select_type,
          ),
          verticalSpace(20),
          BlocBuilder<SignupCubit, SignupState>(
            buildWhen: (previous, current) => current is AgreementState,
            builder: (context, state) {
              return CheckboxListTile(
                value: _cubit.isAgreed,
                onChanged: (value) {
                  print(value);
                  _cubit.setAgreement(value!);
                },
                title: Text(S.of(context).agree_terms_conditions,
                    style: AppTextStyles.font15Dark60Regular),
              );
            },
          ),
        ],
      ),
    );
  }
}
