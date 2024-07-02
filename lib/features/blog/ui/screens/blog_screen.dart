import 'package:flutter/material.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Blog',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      )
    );
  }
}