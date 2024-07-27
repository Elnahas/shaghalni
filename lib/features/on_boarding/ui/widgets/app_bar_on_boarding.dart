import 'package:flutter/material.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import '../../../../generated/l10n.dart';

class AppBarOnBoarding extends StatelessWidget implements PreferredSizeWidget {
  const AppBarOnBoarding({
    super.key,
    required this.myController,
  });

  final PageController myController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            myController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )),
      actions: [
        TextButton(
            onPressed: () {
              myController.animateToPage(3,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            child:  Text(
              S.of(context).skip,
              style: AppTextStyles.font12BlackRegular,
            ))
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}