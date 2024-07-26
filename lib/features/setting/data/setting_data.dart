import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';

import 'setting_item_model.dart';

final settingsItems = [
  SettingItem(
    title: "Profile",
    leadingIcon: FontAwesomeIcons.user,
    onTap: (context) {},
  ),
  SettingItem(
    title: "Notifications",
    leadingIcon: FontAwesomeIcons.bell,
    onTap: (context) {},
  ),
  SettingItem(
    title: "Language",
    leadingIcon: FontAwesomeIcons.globe,
    trailingText: "change",
    onTap: (context) {},
  ),
];

final otherItems = [
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
