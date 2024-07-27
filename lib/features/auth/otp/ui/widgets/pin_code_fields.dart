import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../../logic/otp_cubit.dart';

class PinCodeFields extends StatelessWidget {
  const PinCodeFields({super.key});

  @override
  Widget build(BuildContext context) {

      final TextEditingController otpController = TextEditingController();

     return PinCodeTextField(
      
      controller: otpController,
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
         activeColor: AppColors.primaryColor,
         inactiveColor: AppColors.primaryColor,
         inactiveFillColor: Colors.white,
         activeFillColor: AppColors.lightBlue,
         selectedColor: AppColors.primaryColor,
         selectedFillColor: Colors.white,
       ),
       animationDuration: const Duration(milliseconds: 300),
       backgroundColor: Colors.white,
       enableActiveFill: true,
       
       onCompleted: (submittedCode) {
         GetIt.instance<OtpCubit>().setOtpCode(submittedCode);
         debugPrint("Completed");
       },
       onChanged: (value) {
         debugPrint(value);
       },
     );
  }
}