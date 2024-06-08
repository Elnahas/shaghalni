import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_progress_indicator.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';

import '../../../../../core/functions/show_snack_bar.dart';
import '../../../../../core/routing/routes.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupSuccess ||
          current is SignupLoading ||
          current is SignupFailure,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showProgressIndicator(context);
          },
          signupSuccess: () {
            Navigator.of(context).pop();
            context.pushNamedAndRemoveUntil(Routes.home,
                predicate: (Route<dynamic> route) => false);
          },
          signupFailure: (error) {
            Navigator.of(context).pop();
            showSnackBar(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
