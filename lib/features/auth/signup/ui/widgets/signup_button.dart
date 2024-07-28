import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/show_snack_bar.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupCubit cubit = context.read<SignupCubit>();

    return AppTextButton(
      isLoading: cubit.state is SignupLoading,
      buttonText: S.of(context).create_an_account,
      onPressed: () {
        _validateSignup(context);
      },
    );
  }

  void _validateSignup(BuildContext context) async {
    final SignupCubit cubit = context.read<SignupCubit>();
    if (cubit.signupFormKey.currentState!.validate()) {
      if (cubit.selectedGender != null) {
        if (cubit.isAgreed) {
          await cubit.signUp();
        } else {
          showSnackBar(context, S.of(context).accept_terms_conditions);
        }
      } else {
        showSnackBar(context, S.of(context).pleaseSelectGender);
      }
    }
  }
}