import 'package:flutter/material.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/circular_image.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';

class CategoryItemsWidget extends StatelessWidget {
  final int index;
  final int length ;
  final CategoryModel categoryModel;
  const CategoryItemsWidget({
    super.key,
    required this.index, required this.categoryModel, required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsetsDirectional.only(
          start: 14, end: index == length - 1 ? 14 : 0),
      child: TextButton(
        style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.all(8)),
            backgroundColor: WidgetStateProperty.all(AppColors.lighterGrey),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        onPressed: () {},
        child: Row(
          children: [
            CircularImage(
              imageUrl: categoryModel.iconUrl,
              radius: 20,
            ),
            horizontalSpace(10),
            Text(
              categoryModel.name,
              style: AppTextStyles.font12BlackRegular,
            )
          ],
        ),
      ),
    );
  }
}
