import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../dividing_line.dart';
import '../job_details.dart';

class JobHeaderSection extends StatelessWidget {
  final String titleJob;
  final String postByName;
  final String location;
  final double salary;
  final JobType jobType;
  final ExperienceRange experienceRange;

  const JobHeaderSection({
    super.key,
    required this.titleJob,
    required this.postByName,
    required this.location,
    required this.salary,
    required this.jobType,
    required this.experienceRange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330.h,
      child: Stack(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.primaryColor),
          height: 280.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(30),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              verticalSpace(10),
              Text(
                titleJob,
                style: AppTextStyles.font18BoldWhite,
              ),
              verticalSpace(5),
              Text(
                postByName,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              verticalSpace(5),
              Text(
                location,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  JobDetails(
                    title: "Salary",
                    value: "${salary} EGP",
                  ),
                  DividingLine(),
                  JobDetails(
                    title: "Job Type",
                    value: getJobTypeLabel(jobType),
                  ),
                  DividingLine(),
                  JobDetails(
                    title: "Experience",
                    value: getExperienceLabel(experienceRange),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}


