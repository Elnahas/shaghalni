import 'package:flutter/material.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/icon_and_text_widget.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';

class JobItemsDetailsWidget extends StatelessWidget {

  final JobModel jobModel;
  const JobItemsDetailsWidget({super.key, required this.jobModel});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          jobModel.title,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.font14BoldBlack,
        ),
        verticalSpace(10),
         IconAndTextWidget(
          text: jobModel.postedBy?.userName ?? "",
          icon: Icons.person,
        ),
        verticalSpace(10),
         IconAndTextWidget(
          text: jobModel.category.name,
          icon: Icons.business,
        ),
        verticalSpace(10),
         IconAndTextWidget(
          text: jobModel.city.name,
          icon: Icons.location_on,
        ),
        verticalSpace(10),
         IconAndTextWidget(
          text: "${jobModel.salary} EGP",
          icon: Icons.money_outlined,
        ),
      ],
    );
  }
}