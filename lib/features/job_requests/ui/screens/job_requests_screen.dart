import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/data/enum/job_status.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';

import '../../../../core/helpers/date_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';
import '../../../../core/widgets/app_text_and_icon.dart';

class JobRequestsScreen extends StatelessWidget {
  const JobRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Requests',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          JobStateListView(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Container(
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
              ),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

class JobStateListView extends StatefulWidget {
  const JobStateListView({super.key});

  @override
  State<JobStateListView> createState() => _JobStateListViewState();
}

class _JobStateListViewState extends State<JobStateListView> {
  int selectedStateJobIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 55.h,
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  selectedStateJobIndex = index;
                  setState(() {});
                },
                child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                    width: 80.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: selectedStateJobIndex == index
                          ? AppColors.primaryColor
                          : AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      JobStatus.values[index].name,
                      style: AppTextStyles.font12BlackRegular.copyWith(
                          color: selectedStateJobIndex == index
                              ? AppColors.white
                              : AppColors.black),
                    ))),
              ),
            );
          },
          itemCount: JobStatus.values.length,
        ));
  }
}
