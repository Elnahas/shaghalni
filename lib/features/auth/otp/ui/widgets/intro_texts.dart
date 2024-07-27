import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class IntroTexts extends StatelessWidget {
  final String phoneNumber ;

  const IntroTexts({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(S.of(context).verify_phone_number,
          style: AppTextStyles.font24BoldBlack,
        ),
        verticalSpace(30),
        Container(
            margin:const EdgeInsets.symmetric(horizontal: 2),
            child: RichText(
              text: TextSpan(
                text: S.of(context).enter_otp_code,
                style:
                   const TextStyle(color: Colors.black, fontSize: 18, height: 1.4),
                children: <TextSpan>[
                  TextSpan(
                    text: phoneNumber,
                    style:const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
