import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

import '../../../../core/helpers/spacing.dart';

class JobsBlueContainer extends StatelessWidget {
  const JobsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      height: 220.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 180.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/home_blue_pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  'Explore nearby job\nvacancies\neffortlessly',
                  style: AppTextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: AppTextStyles.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            top: 0,
            child: Image.asset(
              'assets/images/worker_home.png',
              height: 220.h,
            ),
          ),
        ],
      ),
    );
  }
}
