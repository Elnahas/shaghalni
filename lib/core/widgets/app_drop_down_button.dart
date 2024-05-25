import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

class AppDropDownButton extends StatefulWidget {
  const AppDropDownButton({super.key});

  @override
  State<AppDropDownButton> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState extends State<AppDropDownButton> {
  String? selectedGender;
  final List<String> genders = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.lighterGrey, width: 1.3),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      child: DropdownButton(
        underline: Container(),
        isExpanded: true,
        value: selectedGender,
        hint: const Text('Select Gender'),
        items: genders.map((String list) {
          return DropdownMenuItem<String>(
            value: list,
            child: Text(list ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedGender = newValue;
          });
        },
      ),
    );
  }
}
