import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_and_icon.dart';

class RequirementsSection extends StatelessWidget {
  const RequirementsSection({
    super.key,
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
            text: "2-5 years of experience",
            icon: Icons.business_sharp,
            colorText: Colors.black,
          ),
          verticalSpace(10),
          AppTextAndIcon(
              text: "Position open to males only",
              icon: Icons.person,
              colorText: Colors.black),
        ],
      ),
    );
  }
}
