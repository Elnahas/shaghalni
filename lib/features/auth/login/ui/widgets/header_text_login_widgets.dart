import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class HeaderTextLoginWidgets extends StatelessWidget {
  const HeaderTextLoginWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                        Text("What is your phone number?",
                    style: TextStyles.font24BoldBlack),
                verticalSpace(20),
                Text("Please enter you phone number to verify your account",
                    style: TextStyles.font14BlackW300),
      ],
    );
  }
}