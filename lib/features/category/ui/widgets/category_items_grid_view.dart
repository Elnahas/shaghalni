import 'package:flutter/material.dart';
import 'package:shaghalni/core/data/models/category_model.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';

class CategoryItemsGridView extends StatelessWidget {
  final CategoryModel category;
  final Function()? onTap;


  const CategoryItemsGridView({super.key, required this.category, this.onTap});

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
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImageClipRRect(
                  imageUrl: category.iconUrl,
                  height: 60,
                  width: 60,
                ),
                verticalSpace(5),
                Text(
                  category.name,
                  style: AppTextStyles.font12BlackRegular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
