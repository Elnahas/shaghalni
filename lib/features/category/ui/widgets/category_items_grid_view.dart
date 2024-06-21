import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_clip_r_rect.dart';

class CategoryItemsGridView extends StatelessWidget {
  final String name ; 
  final String iconUrl ;
  const CategoryItemsGridView({
    super.key, required this.name, required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        AppClipRRect(
            imageUrl:
                iconUrl,
            height: 60,
            width: 60),
            verticalSpace(5),
        Text(
          name,
          style: AppTextStyles.font12BlackRegular,
        )
      ]),
    );
  }
}