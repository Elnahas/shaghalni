import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import '../widgets/sections/apply_section.dart';
import '../widgets/sections/job_details_section.dart';
import '../widgets/sections/job_header_section.dart';
import '../widgets/sections/requirements_section.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Job Details",
          style: AppTextStyles.font18WhiteMedium,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 80), // Padding to avoid overlap with the button
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JobHeaderSection(),
                  verticalSpace(30),
                  RequirementsSection(),
                  verticalSpace(30),
                  JobDetailsSection(),
                  verticalSpace(30),
                ],
              ),
            ),
          ),
          
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ApplySection(),
          ),
        ],
      ),
    );
  }
}




