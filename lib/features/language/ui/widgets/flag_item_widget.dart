import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class FlagItemWidget extends StatelessWidget {
  final String flagImagePath;
  final String name;
  final bool isSelected;
  final void Function()? onTap;

  const FlagItemWidget({
    super.key,
    required this.flagImagePath,
    required this.name,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(color: AppColors.primaryColor, width: 2)
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 8,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 75,
              width: 125,
              child: Image.asset(
                flagImagePath,
                fit: BoxFit.fill,
              )),
          verticalSpace(20),
          Text(name, style: AppTextStyles.font18BoldBlack),
        ]),
      ),
    );
  }
}
