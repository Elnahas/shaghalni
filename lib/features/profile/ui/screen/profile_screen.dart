import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/widgets/app_circle_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  AppCircleAvatar(imageUrl: Constants.imgUrlTest, radius: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}