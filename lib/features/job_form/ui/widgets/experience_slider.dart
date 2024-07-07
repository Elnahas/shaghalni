import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_label_text.dart';

import '../../logic/cubit/job_form_cubit.dart';

class ExperienceSlider extends StatefulWidget {
  @override
  _ExperienceSliderState createState() => _ExperienceSliderState();
}

class _ExperienceSliderState extends State<ExperienceSlider> {

  late JobFormCubit _cubit;

  @override
  void initState() {
    _cubit =  context.read<JobFormCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabelText(labelText: "Experience level"),
        verticalSpace(10),
        RangeSlider(
          activeColor: AppColors.primaryColor,
          inactiveColor: AppColors.primaryColor.withOpacity(0.5),
          values: RangeValues(_cubit.minExperience.toDouble(), _cubit.maxExperience.toDouble()),
          min: 0,
          max: 8,
          divisions: 8,
          onChanged: (RangeValues values) {
            setState(() {
              _cubit.minExperience = values.start.toInt();
              _cubit.maxExperience = values.end.toInt();
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              9, // Number of labels (0 to 10)
              (index) =>
                  Text('$index', style: AppTextStyles.font12BlackRegular),
            ),
          ),
        )
      ],
    );
  }
}
