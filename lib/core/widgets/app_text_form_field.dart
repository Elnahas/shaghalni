import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import 'app_label_text.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? labelText;
  final bool? isObscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator,
      this.readOnly,
      this.maxLines,
      this.keyboardType,
      this.maxLength,
      this.inputFormatters,
      this.onTap,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!labelText.isNullOrEmpty()) ...[
          AppLabelText(
            labelText: labelText!,
          ),
          verticalSpace(10),
        ],
        TextFormField(
          onTap: onTap,
          readOnly: readOnly ?? false,
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
          inputFormatters:
              keyboardType != null && keyboardType == TextInputType.phone
                  ? [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ]
                  : inputFormatters,
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: contentPadding ??
                  EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              focusedBorder: focusedBorder ??
                  OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.primaryColor, width: 1.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
              enabledBorder: enabledBorder ??
                  OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.lightGrey, width: 1.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(color: Colors.red, width: 1.3),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Colors.red, width: 1.3)),
              hintStyle: hintStyle ?? AppTextStyles.font14LightGrayRegular,
              hintText: hintText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              filled: true,
              fillColor: backgroundColor ?? AppColors.moreLightGray),
          obscureText: isObscureText ?? false,
          style: AppTextStyles.font14DarkBlueMedium,
          validator: (value) {
            return validator(value);
          },
        ),
      ],
    );
  }
}
