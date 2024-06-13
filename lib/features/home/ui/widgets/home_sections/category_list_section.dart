import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/widgets/custom_header_section.dart';
import 'package:shaghalni/features/home/ui/widgets/category_items_widget.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../data/model/category_model.dart';

class CategoryListSection extends StatelessWidget {
  const CategoryListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
            children: [
             const CustomHeaderSection(text: "Categories",),
              verticalSpace(10),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryItemsWidget(index: index),
                  itemCount: categoryModel.length,
                ),
              )
            ],
          );
  }
}