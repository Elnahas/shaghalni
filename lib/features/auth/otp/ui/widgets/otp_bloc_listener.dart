import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_cubit.dart';
import 'package:shaghalni/features/auth/otp/logic/cubit/otp_state.dart';

class OtpBlocListener extends StatelessWidget {
  const OtpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpCubit, OtpState>(
      listenWhen: (previous, current) {
        if (current is OtpSuccess ||
            current is OtpNewUser ||
            current is OtpFailure) {
          return true;
        } else {
          return false;
        }
      },
      listener: (context, state) {
        if (state is OtpNewUser) {
          Navigator.pop(context);
          Navigator.pushNamed(context, Routes.signup);
        } else if (state is OtpNewUser) {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, Routes.home);
        } else if (state is OtpFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
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
