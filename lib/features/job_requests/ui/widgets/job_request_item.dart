import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/date_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';
import '../../../../core/widgets/app_text_and_icon.dart';
import '../../../../core/widgets/app_text_button.dart';

class JobRequestItem extends StatelessWidget {
  const JobRequestItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Row(
        children: [
          AppImageClipRRect(
            imageUrl: Constants.imgUrlTest,
            height: 140,
            width: 120,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
          horizontalSpace(10),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14BoldBlack,
                  ),
                  verticalSpace(10),
                  AppTextAndIcon(
                    text: DateHelper.formatTimeAgo(DateTime.now(),
                        locale: "en"),
                    icon: FontAwesomeIcons.calendar,
                    fontSize: 10,
                    iconColor: Colors.grey,
                  ),
                  verticalSpace(10),
                  Row(
                    children: [
                      Expanded(
                          child: AppTextButton(
                        buttonText: "update",
                        onPressed: () {},
                        buttonHeight: 25,
                        textStyle: AppTextStyles.font14BoldWhite,
                      )),
                      horizontalSpace(20),
                      Expanded(
                          child: AppTextButton(
                        buttonText: "delete",
                        onPressed: () {},
                        backgroundColor:
                            const Color.fromARGB(255, 245, 116, 116),
                        buttonHeight: 25,
                        textStyle: AppTextStyles.font14BoldWhite,
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
          horizontalSpace(10),
        ],
      ),
    );
  }
}

