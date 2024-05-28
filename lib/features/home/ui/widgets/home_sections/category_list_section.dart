import 'package:flutter/material.dart';
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
              verticalSpace(20),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryItemsWidget(index: index),
                  separatorBuilder: (context, index) => horizontalSpace(0),
                  itemCount: categoryModel.length,
                ),
              )
            ],
          );
  }
}