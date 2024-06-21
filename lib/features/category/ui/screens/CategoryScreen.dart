import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/shimmer_list_widget.dart';
import 'package:shaghalni/features/category/logic/category_cubit.dart';
import 'package:shaghalni/features/category/logic/category_state.dart';

import '../widgets/category_grid_view_list.dart';
import '../widgets/category_list_view.dart';
import '../widgets/control_list_or_grid.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late ValueNotifier<bool> isGridView;

  @override
  void initState() {
    super.initState();
    isGridView = ValueNotifier<bool>(true);
  }

  @override
  void dispose() {
    isGridView.dispose();
    super.dispose();
  }

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
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
            child: BlocBuilder<CategoryCubit, CategoryState>(
              buildWhen: (previous, current) =>
                  current is CategorySuccess ||
                  current is CategoryFailure ||
                  current is CategoryLoading,
              builder: (context, state) {
                return state.maybeWhen(
                  categoryLoading: () => setupLoading(),
                  categorySuccess: (categoryList) =>
                      setupCategories(categoryList, isGridView),
                  categoryFailure: (error) => setupError(error),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget setupLoading() {
    return ShimmerList();
  }

  Widget setupCategories(
      List<CategoryModel> categoryList, ValueNotifier<bool> isGridView) {
    return Column(
      children: [
        ControlListOrGrid(
          isGridView: isGridView,
        ),
        verticalSpace(10),
        ValueListenableBuilder(
            valueListenable: isGridView,
            builder: (context, isGrid, child) {
              return isGrid
                  ? CategoryGridViewList(categoryList: categoryList)
                  : CategoryListView(categoryList: categoryList);
            })
      ],
    );
  }

  Widget setupError(String error) {
    return Text(error);
  }
}


