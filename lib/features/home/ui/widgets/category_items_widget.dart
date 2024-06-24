import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/circular_image.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';

class CategoryItemsWidget extends StatelessWidget {
  final int index;
  final int length;
  final CategoryModel categoryModel;
  final int selectedIndex;
  const CategoryItemsWidget({
    super.key,
    required this.index,
    required this.categoryModel,
    required this.length,
    this.selectedIndex = -1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 14 : 24.w),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: index == selectedIndex
                      ? AppColors.primaryColor
                      : Colors.transparent,
                ),
                shape: BoxShape.circle,

                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              ),
              child: CircularImage(
                  backgroundColor: AppColors.lightBlue,
                  imageUrl: categoryModel.iconUrl,
                  radius: index == selectedIndex ? 32.h : 30.h)),
          verticalSpace(8),
          Text(
            categoryModel.name,
            style: index == selectedIndex
                ? AppTextStyles.font14PrimaryColorBold
                : AppTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
