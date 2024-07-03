import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/date_helper.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_image_clip_r_rect.dart';
import 'package:shaghalni/core/widgets/app_text_and_icon.dart';

import '../../../../core/data/models/blog_model.dart';

class BlogDetailsScreen extends StatelessWidget {
  final BlogModel? blogModel;

  const BlogDetailsScreen({Key? key, this.blogModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late BlogModel blogData = blogModel!;

    if (blogModel == null) {
      blogData = blogModel!;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                      Rect.fromLTRB(
                        0,
                        0,
                        rect.width,
                        rect.height,
                      ),
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: AppImageClipRRect(
                    height: 300.h,
                    width: double.infinity,
                    imageUrl: blogData.imageUrl,
                  ),
                ),
                Positioned(
                    top: 10.h,
                    left: 10.h,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.lighterGrey,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,
                            size: 20,
                          )),
                    )),
                Positioned(
                    top: 10.h,
                    right: 10.h,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.lighterGrey,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.share,
                            size: 20,
                          )),
                    )),
                Positioned(
                  bottom: 10,
                  right: 0,
                  left: 0,
                  child: Text(
                    blogModel!.title,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font18BoldBlack,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    alignment: Alignment.topRight,
                    width: double.infinity,
                    child: Column(
                      children: [
                        AppTextAndIcon(
                          text: DateHelper.formatCustomDate(
                              blogData.createdAt.toDate()),
                          icon: FontAwesomeIcons.calendar,
                        ),
                        verticalSpace(20),
                        Text(
                          blogData.details,
                          textAlign: TextAlign.right,
                          style: AppTextStyles.font14DarkBlueMedium,
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
