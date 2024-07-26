import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/setting/data/setting_data.dart';
import 'package:shaghalni/features/setting/ui/widgets/settings_list_view.dart';
import '../../../../core/theming/app_colors.dart';
import '../widgets/user_profile_row.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserProfileRow(),
              verticalSpace(30),
              SettingsListView(
                title: "Setting",
                items: settingsItems,
              ),
              verticalSpace(20),
              SettingsListView(
                title: "Others",
                items: otherItems,
              ),
              verticalSpace(30),
              Container(
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
                    title: Text("Log Out" , style: AppTextStyles.font15NormalRed,),
                    
                    onTap: () {},
                    leading: Icon(FontAwesomeIcons.arrowRightFromBracket , color: Colors.red,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
