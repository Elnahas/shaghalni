
import 'package:flutter/material.dart';
import '../helpers/spacing.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class AppTextAndIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? iconColor;
  final Color? textColor;
  final double? fontSize;
  final MainAxisAlignment? mainAxisAlignment;

  const AppTextAndIcon({
    super.key,
    required this.text,
    required this.icon, this.iconColor, this.textColor, this.mainAxisAlignment, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
      Icon(
        icon,
        size: 20,
        color: iconColor ?? AppColors.primaryColor,
      ),
      horizontalSpace(5),
      Text(
        overflow: TextOverflow.ellipsis,
        text,
        style: AppTextStyles.font12LightGrayRegular.copyWith(color: textColor  , fontSize: fontSize ?? 12),
      )
    ,
    ]);
  }
}