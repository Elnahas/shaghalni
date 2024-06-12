import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../../features/auth/signup/logic/cubit/signup_cubit.dart';

class AppDropDownButton extends StatefulWidget {
  const AppDropDownButton({super.key});

  @override
  State<AppDropDownButton> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState extends State<AppDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.lighterGrey, width: 1.3),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      child: DropdownButton(
        underline: Container(),
        isExpanded: true,
        value: context.read<SignupCubit>().selectedGender,
        hint: const Text('Select Gender'),
        items: context.read<SignupCubit>().genders.map((String list) {
          return DropdownMenuItem<String>(
            value: list,
            child: Text(list),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            context.read<SignupCubit>().selectedGender = newValue;
          });
        },
      ),
    );
  }
}
