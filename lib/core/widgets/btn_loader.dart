import 'package:flutter/material.dart';
import 'package:shaghalni/core/theming/app_colors.dart';


class BtnLoader extends StatelessWidget {
  final Color? color;

  const BtnLoader({super.key, this.color});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: CircularProgressIndicator(

        color: color ?? ColorsManager.white,

        strokeWidth: 5,
      ),
    );
  }
}
