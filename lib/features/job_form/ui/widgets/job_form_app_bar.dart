
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/job_form_cubit.dart';

class JobFormAppBar extends StatelessWidget implements PreferredSizeWidget {
  const JobFormAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.lighterGray,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Job Vacancy Announcement',
        style: AppTextStyles.font14DarkBlueMedium,
      ),
      leading: IconButton(
        onPressed: () {
          if (context.read<JobFormCubit>().currentStep > 1) {
            context.read<JobFormCubit>().previousStep();
          } else {
             context.pushNamedAndRemoveUntil(Routes.home, predicate: (Route<dynamic> route) => false);
          }
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}