import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/home/ui/widgets/slider_and_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SliderAndIndicator(),
        verticalSpace(30),
      ],
    );
  }
}
