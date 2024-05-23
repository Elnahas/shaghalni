import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/phone_auth_cubit.dart';
import 'package:shaghalni/features/auth/otp/ui/widgets/intro_texts.dart';
import 'package:shaghalni/features/auth/otp/ui/widgets/phone_number_otp_listener.dart';
import 'package:shaghalni/features/auth/otp/ui/widgets/pin_code_fields.dart';

import '../../../../../core/widgets/app_text_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneCubit = context.read<PhoneAuthCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(50),
              IntroTexts(
                phoneNumber: phoneCubit.phoneNumber,
              ),
              verticalSpace(30),
              const PinCodeFields(),
              verticalSpace(30),
              Align(
                alignment: Alignment.centerRight,
                child: AppTextButton(
                    verticalPadding: 0,
                    buttonWidth: 130.w,
                    buttonText: "Verify",
                    onPressed: () async {
                      await phoneCubit.submitOTP();
                    }),
              ),
              const PhoneNumberOtpListener(),
            ],
          ),
        ),
      ),
    );
  }
}
