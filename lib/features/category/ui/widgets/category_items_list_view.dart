import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/data/models/category_model.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_clip_r_rect.dart';

class CategoryItemsListView extends StatelessWidget {
  final CategoryModel category;
  final Function()? onTap;
  const CategoryItemsListView({
    super.key,
    required this.category,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        child: InkWell(
          onTap:  onTap,
          borderRadius: BorderRadius.circular(10.r),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ListTile(
              leading: AppClipRRect(
                imageUrl: category.iconUrl,
                height: 50,
                width: 50,
              ),
              trailing: const Icon(Icons.chevron_right),
              title: Text(category.name),
            ),
          ),
        ),
      ),
    );
  }
}
