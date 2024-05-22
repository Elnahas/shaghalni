import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/auth/welcome/ui/widgets/welcome_images_widget.dart';
import 'package:shaghalni/features/auth/welcome/ui/widgets/welcome_text_widgets.dart';
import '../../../../../core/widgets/app_text_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeImagesWidget(),
            verticalSpace(40),
            const WelcomeTextWidgets(),
            verticalSpace(50),
            AppTextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              buttonText: "Let's Get Started",
              buttonWidth: 250.w,
            )
          ],
        ),
      ),
    );
  }
}
