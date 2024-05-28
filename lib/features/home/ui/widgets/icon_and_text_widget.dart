
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 24,
        color: ColorsManager.primaryColor,
      ),
      horizontalSpace(5),
      Text(
        text,
        style: TextStyles.font14LightGrayRegular,
      )
    ]);
  }
}