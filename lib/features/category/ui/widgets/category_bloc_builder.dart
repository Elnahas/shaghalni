import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/category/ui/widgets/category_grid_view_list.dart';
import 'package:shaghalni/features/category/ui/widgets/category_list_view.dart';
import 'package:shaghalni/features/category/ui/widgets/control_list_or_grid.dart';

import '../../../../core/data/models/category_model.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/shimmer_list_widget.dart';
import '../../logic/category_cubit.dart';
import '../../logic/category_state.dart';

class CategoryBlocBuilder extends StatelessWidget {
  final ValueNotifier<bool> isGridView ;
  const CategoryBlocBuilder({super.key, required this.isGridView});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CategoryCubit, CategoryState>(
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