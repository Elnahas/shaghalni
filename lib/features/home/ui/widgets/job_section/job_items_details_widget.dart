import 'package:flutter/material.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/icon_and_text_widget.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class JobItemsDetailsWidget extends StatelessWidget {
  const JobItemsDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Job Casher",
          style: AppTextStyles.font18BoldBlack,
        ),
        verticalSpace(10),
        const IconAndTextWidget(
          text: "Hazem",
          icon: Icons.person,
        ),
        verticalSpace(10),
        const IconAndTextWidget(
          text: "Programmer",
          icon: Icons.business,
        ),
        verticalSpace(10),
        const IconAndTextWidget(
          text: "Egypt",
          icon: Icons.location_on,
        ),
        verticalSpace(10),
        const IconAndTextWidget(
          text: "5000 EGP",
          icon: Icons.money_outlined,
        )
      ],
    );
  }
}