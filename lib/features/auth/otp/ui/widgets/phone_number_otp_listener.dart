import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_progress_indicator.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/phone_auth_cubit.dart';

class PhoneNumberOtpListener extends StatelessWidget {
  const PhoneNumberOtpListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PhoneAuthCubit, PhoneAuthState>(
      listenWhen: (previous, current) {
        if (current is PhoneAuthOTPVerifiedState ||
            current is PhoneAuthLoadingState ||
            current is PhoneAuthFailureState) {
          return true;
        } else {
          return false;
        }
      },
      listener: (context, state) {
        if (state is PhoneAuthOTPVerifiedState) {
          Navigator.pop(context);
          Navigator.pushNamed(context, Routes.signup);
        } else if (state is PhoneAuthLoadingState) {
          showProgressIndicator(context);
        } else if (state is PhoneAuthFailureState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMsg),
              backgroundColor: Colors.black,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
