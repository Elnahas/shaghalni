import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/ui/widgets/category_items_widget.dart';
import '../data/models/category_model.dart';

class AppCategoryListViewHorizontal extends StatelessWidget {
  const AppCategoryListViewHorizontal({
    super.key,
    required this.categoryList,
  });

  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryItemsWidget(
          index: index,
          categoryModel: categoryList[index],
          length: categoryList.length,
        ),
        itemCount: categoryList.length,
      ),
    );
  }
}
