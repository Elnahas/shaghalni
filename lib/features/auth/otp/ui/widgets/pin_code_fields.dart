import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/features/auth/login/logic/cubit/phone_auth_cubit.dart';

class PinCodeFields extends StatelessWidget {
  const PinCodeFields({super.key});

  @override
  Widget build(BuildContext context) {
     return PinCodeTextField(
       appContext: context,
       autoFocus: true,
       cursorColor: Colors.black,
       keyboardType: TextInputType.number,
       length: 6,
       obscureText: false,
       animationType: AnimationType.scale,
       pinTheme: PinTheme(
         shape: PinCodeFieldShape.box,
         borderRadius: BorderRadius.circular(5),
         fieldHeight: 50,
         fieldWidth: 40,
         borderWidth: 1,
         activeColor: ColorsManager.primaryColor,
         inactiveColor: ColorsManager.primaryColor,
         inactiveFillColor: Colors.white,
         activeFillColor: ColorsManager.lightBlue,
         selectedColor: ColorsManager.primaryColor,
         selectedFillColor: Colors.white,
       ),
       animationDuration: const Duration(milliseconds: 300),
       backgroundColor: Colors.white,
       enableActiveFill: true,
       
       onCompleted: (submittedCode) {
        context.read<PhoneAuthCubit>().otpCode = submittedCode;
         debugPrint("Completed");
       },
       onChanged: (value) {
         debugPrint(value);
       },
     );
  }
}