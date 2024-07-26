import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';

import '../../../core/helpers/constants.dart';
import 'setting_item_model.dart';

abstract class SettingData {
  static List<SettingItem> settingsItems = [
    SettingItem(
      title: "Profile",
      leadingIcon: FontAwesomeIcons.user,
      onTap: (context) {},
    ),
    SettingItem(
      title: "Notifications",
      leadingIcon: FontAwesomeIcons.bell,
      onTap: (context) {
        context.pushNamed(Routes.notification);
      },
    ),
    SettingItem(
      title: "Language"+ " (${getSelectedLanguageLabel()})",
      leadingIcon: FontAwesomeIcons.globe,
      trailingText: "Change",
      onTap: (context) {},
    ),
  ];

  static List<SettingItem> otherItems = [
    SettingItem(
      title: "Help center",
      leadingIcon: FontAwesomeIcons.headset,
      onTap: (context) {},
    ),
    SettingItem(
      title: "Terms and Conditions",
      leadingIcon: FontAwesomeIcons.fileContract,
      onTap: (context) {
        context.pushNamed(Routes.terms);
      },
    ),
  ];
}
