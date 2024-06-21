import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/category/ui/widgets/category_items_grid_view.dart';


class CategoryGridViewList extends StatelessWidget {
  const CategoryGridViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.w,
        crossAxisSpacing: 16.w,
        mainAxisExtent: 120.h,
      ),
      itemBuilder: (context, index) => CategoryItemsGridView(),
    );
  }
}