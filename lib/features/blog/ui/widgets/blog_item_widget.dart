import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';
import '../../../../core/widgets/app_text_and_icon.dart';

class BlogItemWidget extends StatelessWidget {
  const BlogItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
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
            height: 150,
            width: 150,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title of the blog here and so on and so on and so on',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font14BoldBlack,
                ),
                verticalSpace(10),
                Text(
                  'Description of the blog here and so on and so   so  so  so  so on and so on',
                                                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font14BlackW300,
                ),
                verticalSpace(10),
                AppTextAndIcon(text: "date", icon: FontAwesomeIcons.calendar , iconColor: Colors.grey,)
              ],
            ),
          ),
          horizontalSpace(10),
        ],
      ),
    );
  }
}
