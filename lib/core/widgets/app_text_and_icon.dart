
import 'package:flutter/material.dart';
import '../helpers/spacing.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class AppTextAndIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? colorIcon;
  final Color? colorText;

  const AppTextAndIcon({
    super.key,
    required this.text,
    required this.icon, this.colorIcon, this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 20,
        color: colorIcon ?? AppColors.primaryColor,
      ),
      horizontalSpace(5),
      Text(
         softWrap: true,
        overflow: TextOverflow.ellipsis,
        text,
        style: AppTextStyles.font12LightGrayRegular.copyWith(color: colorText ),
      )
    ]);
  }
}