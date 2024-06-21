import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/widgets/app_clip_r_rect.dart';

import '../../../../core/data/models/category_model.dart';
import '../../../../core/theming/app_colors.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> categoryList;

  const CategoryListView({required this.categoryList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric( vertical: 10.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: AppClipRRect(imageUrl: categoryList[index].iconUrl, height: 50, width: 50),
            selectedColor: Colors.white,
            trailing: const Icon(Icons.chevron_right),
            title: Text(
              categoryList[index].name
            ),
          ),
        );
      },
    );
  }
}
