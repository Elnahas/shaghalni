import 'package:flutter/material.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import '../../generated/l10n.dart';

class CustomHeaderSection extends StatelessWidget {

    final String text;
  final Function()? onPressed;

  const CustomHeaderSection({super.key, required this.text, this.onPressed});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.font14BoldBlack,
          ),
          TextButton(
              style: ButtonStyle(
                padding: const WidgetStatePropertyAll(EdgeInsets.all(0)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
              ),
              onPressed: onPressed,
              child: Text(
                S.of(context).view_all,
                style: AppTextStyles.font12BoldBlue,
              ))
        ],
      ),
    );
  }
}
