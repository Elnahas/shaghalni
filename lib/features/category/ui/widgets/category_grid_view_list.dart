import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/category/ui/widgets/category_items_grid_view.dart';

import '../../../../core/data/models/category_model.dart';

class CategoryGridViewList extends StatelessWidget {
  final List<CategoryModel> categoryList;

  const CategoryGridViewList({
    super.key,
    required this.categoryList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.w,
        crossAxisSpacing: 16.w,
        mainAxisExtent: 120.h,
      ),
      itemBuilder: (context, index) => InkWell(
        child: CategoryItemsGridView(
            name: categoryList[index].name, iconUrl: categoryList[index].iconUrl),
      ),
    );
  }
}
