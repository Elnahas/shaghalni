import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/home/ui/widgets/home_sections/job_list_section.dart';
import 'package:shaghalni/features/home/ui/widgets/home_sections/slider_and_indicator_section.dart';
import '../widgets/home_sections/category_list_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSpace(10),
          //const SliderAndIndicatorSection(),
          verticalSpace(40),
          const CategoryListSection(),
          verticalSpace(20),
          const JobListSection()
         
        ],
      ),
    );
  }
}





