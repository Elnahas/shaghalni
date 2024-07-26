import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/setting/data/setting_data.dart';
import 'package:shaghalni/features/setting/ui/widgets/setting_bloc_listener.dart';
import 'package:shaghalni/features/setting/ui/widgets/settings_list_view.dart';
import '../widgets/list_title_log_out.dart';
import '../widgets/user_profile_row.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                items: SettingData.getSettingsItems(context),
              ),
              verticalSpace(20),
              SettingsListView(
                title: "Others",
                items: SettingData.getOtherItems(context),
              ),
              verticalSpace(30),
              ListTitleLogOut(),
              SettingBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}
