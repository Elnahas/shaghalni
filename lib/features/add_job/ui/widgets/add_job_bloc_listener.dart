import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_state.dart';

import '../../../../core/functions/show_snack_bar.dart';

class AddJobBlocListener extends StatelessWidget {
  const AddJobBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddJobCubit, AddJobState>(
      listenWhen: (previous, current) =>
          current is AddJobSuccess ||
          current is AddJobFailure ||
          current is AddJobLoading ||
          current is CategoryFailure,
          
      listener: (context, state) {
        state.whenOrNull(
          addJobLoading: () {
          },
          addJobSuccess: (data) {
            Navigator.pop(context);
          },
          addJobFailure: (error) {
            Navigator.pop(context);
            showSnackBar(context, error);
          },
          categoryFailure: (error) {
            showSnackBar(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
