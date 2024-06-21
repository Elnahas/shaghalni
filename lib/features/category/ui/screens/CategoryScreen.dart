import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import '../widgets/category_grid_view_list.dart';
import '../widgets/control_list_or_grid.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Category',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w , vertical: 14.h),
            child: Column(
              children: [

                ControlListOrGrid(),

                verticalSpace(10),

                CategoryGridViewList()


              ],
            ),
          ),
        ),
      ),
    );
  }
}





