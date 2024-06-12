import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class IntroTexts extends StatelessWidget {
  final String phoneNumber ;

  const IntroTexts({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "Verification your phone number",
          style: AppTextStyles.font24BoldBlack,
        ),
        verticalSpace(30),
        Container(
            margin:const EdgeInsets.symmetric(horizontal: 2),
            child: RichText(
              text: TextSpan(
                text: 'Enter your 6 digit code numbers sent to ',
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
