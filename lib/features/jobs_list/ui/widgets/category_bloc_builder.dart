import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/jobs_list/logic/jobs_list_cubit.dart';
import '../../../../core/data/models/category_model.dart';
import '../../../../core/widgets/app_category_list_view_horizontal.dart';
import '../../logic/jobs_list_state.dart';

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<JobsListCubit, JobsListState>(
                    buildWhen: (previous, current) =>
                        current is CategorySuccess ||
                        current is CategoryFailure ||
                        current is CategoryLoading,
                    builder: (context, state) {
                      return state.maybeMap(
                        categorySuccess: (categoryList) =>
                            setupSuccess(categoryList.categoryList),
                        orElse: () => Container(),
                      );
                    },
                  );
  }


    Widget setupSuccess(List<CategoryModel> categoryList) {
    return AppCategoryListViewHorizontal(categoryList: categoryList);
  }

  Widget setupError(String error) {
    return Container(child: Text(error));
  }

  Widget setupLoading() {
    return Center(child: CircularProgressIndicator());
  }
}