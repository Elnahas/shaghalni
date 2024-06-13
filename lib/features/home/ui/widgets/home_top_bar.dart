import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/circular_image.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
      child: Row(
        children: [

          CircularImage(imageUrl: "",
          radius: 25,
          errorWidget: Image.asset("assets/images/ic_profile_placeholder.png"),),

          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Hazem",
                style: AppTextStyles.font15DarkMedium,
              ),
              Text(
                "How Are you Today?",
                style: AppTextStyles.font13GreyW300,
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.lighterGrey,
            child: SvgPicture.asset("assets/svgs/notifications.svg"),
          )
        ],
      ),
    );
  }
}
