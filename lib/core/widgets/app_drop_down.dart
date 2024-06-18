import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/widgets/app_label_text.dart';

class AppDropdown<T> extends StatelessWidget {
  final T? selectedValue;
  final String? labelText;
  final List<T> items;
  final String Function(T)? getLabel;
  final void Function(T?)? onChanged;

  const AppDropdown({
    Key? key,
    this.selectedValue,
    this.labelText,
    required this.items,
    this.getLabel,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          AppLabelText(
            labelText: labelText!,
          ),
          verticalSpace(10),
        ],
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.3),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: DropdownButton<T>(
            underline: Container(),
            isExpanded: true,
            value: selectedValue,
            hint: Text('Select Type'),
            onChanged: onChanged,
            items: items.map((T value) {
              return DropdownMenuItem<T>(
                value: value,
                child: Text(
                    getLabel != null ? getLabel!(value) : value.toString()),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
