import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/widgets/custom_header_section.dart';
import 'package:shaghalni/features/home/ui/widgets/category_items_widget.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_category_list_view_horizontal.dart';

class CategoryListSection extends StatelessWidget {
  final List<CategoryModel> categoryList;
  const CategoryListSection({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderSection(
          text: "Categories",
          onPressed: () {
            
            context.pushNamed(Routes.category);
          },
        ),
        verticalSpace(10),

        AppCategoryListViewHorizontal(categoryList: categoryList)

      ],
    );
  }
}

