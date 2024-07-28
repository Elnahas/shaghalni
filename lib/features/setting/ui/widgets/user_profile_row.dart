import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/extentions.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/date_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_circle_avatar.dart';

class UserProfileRow extends StatelessWidget {
  const UserProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          AppCircleAvatar(
            imageUrl: userModel!.imageUrl.isNullOrEmpty() ? "" : userModel!.imageUrl!,
            radius: 35,
            errorWidget:
                Image.asset("assets/images/ic_profile_placeholder.png"),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userModel!.fullName,
                  style: AppTextStyles.font18BoldBlack,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  DateHelper.formatTimeAgo(
                      userModel?.createdAt.toDate() ?? DateTime.now()),
                  style: AppTextStyles.font14LightGrayRegular,
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.pen,
                color: AppColors.primaryColor,
                size: 20,
              ))
        ],
      ),
    );
  }
}
