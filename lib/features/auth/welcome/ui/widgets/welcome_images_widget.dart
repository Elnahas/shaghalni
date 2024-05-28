import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeImagesWidget extends StatelessWidget {
  const WelcomeImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topRight,
        child: Image.asset(
          "assets/images/ic_background_upper_screen.png",
        ),
      ),
      Container(
          margin: const EdgeInsets.only(top: 70, right: 20, left: 20),
          height: 350.h,
          child: Image.asset(
            "assets/images/ic_welcome.png",
          )),
    ]);
  }
}
