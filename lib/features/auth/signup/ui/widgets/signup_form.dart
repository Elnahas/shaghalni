import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import '../../../../../core/helpers/date_helper.dart';
import '../../../../../core/widgets/select_list_widget.dart';
import '../../../../../core/widgets/user_details_form.dart';
import '../../../../../generated/l10n.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    final SignupCubit _cubit = context.read<SignupCubit>();

    return UserDetailsForm(
        formKey: _cubit.signupFormKey,
        firstNameController: _cubit.firstNameController,
        lastNameController: _cubit.lastNameController,
        cityController: _cubit.cityController,
        birthDateController: _cubit.birthDateController,
        onDateSelected: (date) {
          _cubit.birthDateController.text =
              DateHelper.formatCustomDate(date, format: 'dd-MM-yyyy');
        },
        onCityTap: () async {
          await showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                  padding: const EdgeInsets.all(14),
                  child: SelectListWidget(
                    items: _cubit.cityList,
                    title: S.of(context).select_city,
                    onItemSelected: (value) {
                      _cubit.cityController.text = _cubit.cityList[value].name;
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
        onProfileImageSelected: (file) {
          _cubit.imageFile = file;
        },
        initialProfileImageFile: _cubit.imageFile,
        selectedGender: _cubit.selectedGender,
        onGenderChanged: (gender) {
          _cubit.selectedGender = gender;
          setState(() {});
        });
  }
}
