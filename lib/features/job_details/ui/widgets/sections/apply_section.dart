import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_and_icon.dart';


class ApplySection extends StatelessWidget {

  final int viewsJob;
  final String phoneNumber;
  const ApplySection({super.key, required this.viewsJob, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Views Job",
                style: AppTextStyles.font14BlackW300,
              ),
              verticalSpace(5),
              AppTextAndIcon(text: "${viewsJob}", icon: Icons.remove_red_eye),
            ],
          ),
          AppTextButton(
            buttonWidth: 150.w,
            buttonText: "Apply",
            onPressed: () {},
          ),
        ],
      ),
    );
  }


}



