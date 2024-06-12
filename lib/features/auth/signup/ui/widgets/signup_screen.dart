import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_cubit.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/shimmer_signup_widget.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/signup_form.dart';
import '../../../../../core/functions/show_snack_bar.dart';
import '../../../../../core/routing/routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    context.read<SignupCubit>().getCity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocConsumer<SignupCubit, SignupState>(
            listenWhen: (previous, current) =>
                current is SignupSuccess || current is SignupFailure,
            listener: (context, state) {
              state.whenOrNull(
                signupSuccess: () {
                  context.pushNamedAndRemoveUntil(Routes.home,
                      predicate: (Route<dynamic> route) => false);
                },
                signupFailure: (error) {
                  Navigator.of(context).pop();
                  showSnackBar(context, error);
                },
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(30),
                  Text(
                    "Create Account",
                    style: AppTextStyles.font24BoldBlack,
                  ),
                  verticalSpace(30),
                  state is CityLoading
                      ? const SingleChildScrollView(
                          child: ShimmerSignupWidget())
                      : const SignupForm(),
                  verticalSpace(20),
                  AppTextButton(
                      isLoading: state is SignupLoading,
                      buttonText: "Create an account",
                      onPressed: () {
                        validateSignup(context);
                      })
                ],
              );
            },
          ),
        ),
      )),
    );
  }

  void validateSignup(BuildContext context) async {
    var cubit = context.read<SignupCubit>();
    if (cubit.signupFormKey.currentState!.validate()) {
      if(cubit.isAgreed)
      {await cubit.signUp();}
      else{
        showSnackBar(context, "Please accept the terms and conditions");
      }
    }
  }
}
