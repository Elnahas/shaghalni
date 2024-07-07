import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_cubit.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_state.dart';
import '../../../../core/functions/show_snack_bar.dart';
import '../../../../core/routing/routes.dart';

class JobFormBlocListener extends StatelessWidget {
  const JobFormBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobFormCubit, JobFormState>(
      listenWhen: (previous, current) =>
          current is AddJobSuccess ||
          current is FormFailure ||
          current is CategoryAndCityFailure ||
          previous is CategoryAndCityFailure,
      listener: (context, state) {
        state.whenOrNull(
          addJobSuccess: () {
            context.pushNamedAndRemoveUntil(Routes.home,
                predicate: (Route<dynamic> route) => false);
          },
          formFailure: (error) {
            showSnackBar(context, error);
          },
          categoryAndCityFailure: (error) {
            showSnackBar(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
