import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_clip_r_rect.dart';

class CategoryItemsGridView extends StatelessWidget {
  const CategoryItemsGridView({
    super.key,
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
                "https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png",
            height: 75,
            width: 75),
            verticalSpace(5),
        Text(
          "Medical",
          style: AppTextStyles.font12BlackRegular,
        )
      ]),
    );
  }
}