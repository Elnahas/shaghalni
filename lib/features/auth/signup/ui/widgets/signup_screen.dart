import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/features/auth/signup/ui/widgets/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String? selectedGender;
  final List<String> genders = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30),
              Text(
                "Create Account",
                style: TextStyles.font24BoldBlack,
              ),
              verticalSpace(30),

              const SignupForm(), 

              verticalSpace(20),
              AppTextButton(buttonText: "Register", onPressed: (){})
    
            ],
          ),
        ),
      )),
    );
  }
}
