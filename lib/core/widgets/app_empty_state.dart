import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/spacing.dart';
import '../theming/app_text_styles.dart';

class AppEmptyState extends StatelessWidget {
  final String svgAssetPath;
  final String title;
  final String subtitle;

  const AppEmptyState({super.key, required this.svgAssetPath, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(svgAssetPath),
        Text(
          title,
          style: AppTextStyles.font14BoldRockBlue,
        ),
        verticalSpace(10),
        Text(
          subtitle,
          style: AppTextStyles.font12DarkBlueRegular,
        ),
      ],
    );
  }
}
