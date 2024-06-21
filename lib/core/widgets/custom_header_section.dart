import 'package:flutter/material.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

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
              onPressed: () {},
              child: Text(
                "View All > ",
                style: AppTextStyles.font12BoldBlue,
              ))
        ],
      ),
    );
  }
}
