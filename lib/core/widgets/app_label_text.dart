import 'package:flutter/material.dart';

import '../theming/app_text_styles.dart';

class AppLabelText extends StatelessWidget {

  final String labelText;
  const AppLabelText({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Text(
            labelText,
            style: AppTextStyles.poppins14Normal,
          );
  }
}