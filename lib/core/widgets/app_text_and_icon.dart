
import 'package:flutter/material.dart';
import '../helpers/spacing.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class AppTextAndIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  const AppTextAndIcon({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 20,
        color: AppColors.primaryColor,
      ),
      horizontalSpace(5),
      Text(
        overflow: TextOverflow.ellipsis,
        text,
        style: AppTextStyles.font12LightGrayRegular,
      )
    ]);
  }
}