import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/circular_image.dart';
import 'package:shaghalni/core/widgets/custom_shimmer_image.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/model/category_model.dart';

class CategoryItemsWidget extends StatelessWidget {
  final int index;
  const CategoryItemsWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          start: 14, end: index == categoryModel.length - 1 ? 14 : 0),
      child: TextButton(
        style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.all(8)),
            backgroundColor: WidgetStateProperty.all(AppColors.lighterGrey),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        onPressed: () {},
        child: Row(
          children: [
            CircularImage(imageUrl: categoryModel[index].imageUrl , radius: 20,),
            horizontalSpace(10),
            Text(
              categoryModel[index].name,
              style: AppTextStyles.font14BoldBlack,
            )
          ],
        ),
      ),
    );
  }
}
