import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
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
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Dismissible(
        key: Key("unique_key"),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {},
        background: Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.red,
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
          child: Icon(
            FontAwesomeIcons.trash,
            color: Colors.white,
          ),
        ),
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
                height: 100,
                width: 100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: Container(
                  height: 100.h,
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
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              context.pushNamed(Routes.addJob, arguments: jobModel);
                            },
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          jobModel.status.name,
                          style: AppTextStyles.font12BoldBlue,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
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
}
