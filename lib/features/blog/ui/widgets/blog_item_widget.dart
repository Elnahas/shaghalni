import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/date_helper.dart';
import 'package:shaghalni/features/blog/data/model/blog_model.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';
import '../../../../core/widgets/app_text_and_icon.dart';

class BlogItemWidget extends StatelessWidget {
  final BlogModel blogModel ;
  const BlogItemWidget({
    super.key, required this.blogModel,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 20 , left: 20 , right: 20),
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
            imageUrl: blogModel.imageUrl,
            height: 150,
            width: 150,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blogModel.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font14BoldBlack,
                ),
                verticalSpace(10),
                Text(
                  blogModel.details,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font12BlackRegular,
                ),
                verticalSpace(10),
                AppTextAndIcon(
                  text: DateHelper.formatTimeAgo(blogModel.createdAt.toDate() ,locale:  "ar"),
                  icon: FontAwesomeIcons.calendar,
                  iconColor: Colors.grey,
                )
              ],
            ),
          ),
          horizontalSpace(10),
        ],
      ),
    );
  }


}
