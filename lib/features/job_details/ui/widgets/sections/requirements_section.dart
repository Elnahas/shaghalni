import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/enum/gender.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_and_icon.dart';

class RequirementsSection extends StatelessWidget {
  final ExperienceRange experienceRange;
  final Gender gender;

  const RequirementsSection({
    super.key,
    required this.experienceRange,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Requirements",
            style: AppTextStyles.font14BoldBlue,
          ),
          verticalSpace(20),
          AppTextAndIcon(
            text: "${getExperienceLabel(experienceRange)} of experience",
            icon: Icons.business_sharp,
            textColor: Colors.black,
          ),
          verticalSpace(10),
          AppTextAndIcon(
            
              text:
                  "Position open to ${getGenderJobLabel(gender)} ${gender.name == Gender.both.name ? "" : "only"}",
              icon: Icons.person,
              textColor: Colors.black),
        ],
      ),
    );
  }
}
