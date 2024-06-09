import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
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
        if (state is OtpSuccess) {
         
          context.pushNamedAndRemoveUntil(Routes.home,
              predicate: (Route<dynamic> route) => false);
        } else if (state is OtpNewUser) {
          context.pushNamed(Routes.signup);
        } else if (state is OtpFailure) {
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
