import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/ui/widgets/category_items_widget.dart';
import '../data/models/category_model.dart';

class AppCategoryListViewHorizontal extends StatelessWidget {
  const AppCategoryListViewHorizontal({
    super.key,
    required this.categoryList,
    this.selectedCategoryIndex,
    required this.onTap,
  });

  final selectedCategoryIndex;

  final List<CategoryModel> categoryList;

  final Function(int selectedIndex) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => onTap(index),
          child: CategoryItemsWidget(
            index: index,
            categoryModel: categoryList[index],
            length: categoryList.length,
            selectedIndex: selectedCategoryIndex,
          ),
        ),
        itemCount: categoryList.length,
      ),
    );
  }
}
