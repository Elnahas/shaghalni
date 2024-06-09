
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/add_job_cubit.dart';

class AddJobAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddJobAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.lighterGray,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Job Vacancy Announcement',
        style: TextStyles.font18BoldBlack,
      ),
      leading: IconButton(
        onPressed: () {
          if (context.read<AddJobCubit>().currentStep > 1) {
            context.read<AddJobCubit>().previousStep();
          } else {
            Navigator.pop(context);
          }
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: ColorsManager.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}