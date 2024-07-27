import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/app_labels.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import '../../../../core/data/enum/job_status.dart';
import '../../../../core/helpers/date_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_image_clip_r_rect.dart';

class JobRequestItem extends StatelessWidget {
  final JobModel jobModel;
  const JobRequestItem({
    super.key,
    required this.jobModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.jobDetails,
          arguments: jobModel.id,
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
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
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImageClipRRect(
                imageUrl: jobModel.category.coverImageUrl,
                height: 110,
                width: 100,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(12),
                  bottomStart: Radius.circular(12),
                ).resolve(Directionality.of(context)),
              ),
              horizontalSpace(10),
              Expanded(
                child: Container(
                  height: 110.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            jobModel.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.font14BoldBlack,
                          ),
                          jobModel.status == JobStatus.pending
                              ? IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    context.pushNamed(Routes.addJob,
                                        arguments: jobModel);
                                  },
                                )
                              : Container(width: 50.w, height: 50.h),
                        ],
                      ),
                      Container(
                        width: 80.w,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                           color: getStatusColor(jobModel.status),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            AppLabels.getStatusLabel(context, jobModel.status),
                            style: AppTextStyles.font12BlueRegular,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          DateHelper.formatCustomDate(
                            jobModel.createdAt,
                          ),
                          style: AppTextStyles.font10LightGrayRegular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              horizontalSpace(10),
            ],
          ),
        ),
      ),
    );
  }

    static const Map<JobStatus, Color> _statusColors = {
    JobStatus.open: Color(0xFFE0F7FA),    // Light Cyan
    JobStatus.closed: Color(0xFFB0BEC5),  // Light Blue Grey
    JobStatus.pending: Color(0xFFFFF9C4), // Light Yellow
    JobStatus.reject: Color(0xFFFFCDD2),  // Light Red
  };

    Color getStatusColor(JobStatus status) {
    return _statusColors[status]?.withOpacity(0.8) ?? Colors.transparent;
  }
}
