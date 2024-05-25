import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_progress_indicator.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_state.dart';
class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(

      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showProgressIndicator(context);
          },
          loginSuccess: (data) {
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.otp);
          },
          loginFailure: (error) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(error),
              backgroundColor: Colors.black,
              duration: const Duration(seconds: 3),
            ));
          },
          
        );
      }
      
      
      ,
      child: const SizedBox.shrink(),
    );
  }
}
