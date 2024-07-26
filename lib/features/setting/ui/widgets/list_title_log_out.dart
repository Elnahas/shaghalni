import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../logic/setting_cubit.dart';

class ListTitleLogOut extends StatelessWidget {
  const ListTitleLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
          title: Text(
            "Log Out",
            style: AppTextStyles.font15NormalRed,
          ),
          onTap: () {
            context.read<SettingCubit>().logout();
          },
          leading: Icon(
            FontAwesomeIcons.arrowRightFromBracket,
            color: Colors.red,
          )),
    );
  }
}
