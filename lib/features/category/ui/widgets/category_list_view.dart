import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/features/category/ui/widgets/category_items_list_view.dart';
import '../../../../core/data/models/category_model.dart';
import '../../../../core/routing/routes.dart';

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
        return CategoryItemsListView(
          category: categoryList[index],
          onTap: () => context.pushNamed(
            Routes.jobsList,
            arguments: index,
          ),
        );
      },
    );
  }
}
