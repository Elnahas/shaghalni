import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import 'package:shaghalni/features/auth/login/ui/widgets/login_bloc_listener.dart';

import '../../logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(50),
                Text("What is your phone number?",
                    style: TextStyles.font24BoldBlack),
                verticalSpace(20),
                Text("Please enter you phone number to verify your account",
                    style: TextStyles.font14BlackW300),
                verticalSpace(50),
                IntlPhoneField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'EG',
                  onChanged: (phone) {
                    context
                        .read<LoginCubit>()
                        .setPhoneNumber(phone.completeNumber);
                  },
                ),
                verticalSpace(50),
                Align(
                  alignment: Alignment.centerRight,
                  child: AppTextButton(
                      verticalPadding: 0,
                      buttonWidth: 130.w,
                      buttonText: "Next",
                      onPressed: () async {
                        await context.read<LoginCubit>().sendOtp();
                      }),
                ),
                const LoginBlocListener()
              ],
            )),
      ),
    );
  }
}
