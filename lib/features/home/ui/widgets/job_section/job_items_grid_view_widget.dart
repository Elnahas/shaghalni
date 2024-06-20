import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/job_items_details_widget.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/job_items_image_widget.dart';

import '../../../../../core/data/models/job_model.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import 'package:shaghalni/core/helpers/extentions.dart';

class JobItemsGridViewWidget extends StatelessWidget {
  final JobModel? jobModel;
  final int index;

  const JobItemsGridViewWidget({super.key, this.jobModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        context.pushNamed(
          Routes.jobDetails,
          arguments: jobModel!.id,
        );

        //context.pushNamed(Routes.jobDetails, arguments: jobModel!.id);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lighterGrey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.r),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JobItemsImageWidget(imagePath: jobModel!.category.coverImageUrl),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: JobItemsDetailsWidget(jobModel: jobModel!),
            ),
          ],
        ),
      ),
    );
  }
}
