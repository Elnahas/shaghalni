import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/features/auth/login/logic/login_cubit.dart';
import 'package:shaghalni/features/auth/login/logic/login_state.dart';
class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(

      listenWhen: (previous, current) =>
          current is LoginSuccess ||
          current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (data) {
            Navigator.pop(context);
            context.pushNamed( Routes.otp);
          },
          loginFailure: (error) {
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
