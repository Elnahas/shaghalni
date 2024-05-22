import 'package:flutter/material.dart';

class WelcomeImagesWidget extends StatelessWidget {
  const WelcomeImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/images/ic_background_upper_screen.png",
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 70, right: 20, left: 20),
            child: Image.asset(
              "assets/images/ic_welcome.png",
            )),
      ]),
    );
  }
}