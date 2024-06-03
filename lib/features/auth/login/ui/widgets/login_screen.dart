import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/core/widgets/btn_loader.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/login_state.dart';
import 'package:shaghalni/features/auth/login/ui/widgets/header_text_login_widgets.dart';
import 'package:shaghalni/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:shaghalni/features/auth/login/ui/widgets/login_form.dart';

import '../../logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(50),
                    const HeaderTextLoginWidgets(),
                    verticalSpace(50),
                    const LoginForm(),
                    verticalSpace(50),
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppTextButton(
                          isLoading: state is LoginLoading,
                          verticalPadding: 0,
                          buttonWidth: 130.w,
                          buttonText: "Next",
                          onPressed: () {
                            print("NextNextNextNextNextNextNextNextNextNextNextNext");
                            validateLogin(context);
                          }),
                    ),
                    const LoginBlocListener()
                  ],
                );
              },
            )),
      ),
    );
  }

  void validateLogin(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    if (cubit.loginFormKey.currentState!.validate()) {
      cubit.setPhoneNumber(cubit.phoneNumber);
      cubit.sendOtp();
    }
  }
}
