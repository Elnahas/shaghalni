import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/home/logic/home_cubit.dart';
import 'package:shaghalni/features/home/logic/home_state.dart';

class CategoriesAndJobsBlocBuilder extends StatelessWidget {
  const CategoriesAndJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesAndJobsLoading ||
          current is CategoriesAndJobsSuccess ||
          current is CategoriesAndJobsFailure,
      builder: (context, state) {
        return SizedBox.shrink();
      },
    );
  }
}
