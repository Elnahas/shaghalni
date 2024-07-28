import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/helpers/app_labels.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/routing/routes.dart';
import '../../../generated/l10n.dart';
import '../ui/widgets/language_selection_sheet.dart';
import 'setting_item_model.dart';

class SettingData {
  static List<SettingItem> getSettingsItems(BuildContext context) {
    final localizations = S.of(context);

    return [
      SettingItem(
        title: localizations.profile,
        leadingIcon: FontAwesomeIcons.user,
        onTap: (context) {
          context.pushNamed(Routes.profile);
        },
      ),
      SettingItem(
        title: localizations.notifications,
        leadingIcon: FontAwesomeIcons.bell,
        onTap: (context) {
          context.pushNamed(Routes.notification);
        },
      ),
      SettingItem(
        title:
            "${localizations.language} (${AppLabels.getSelectedLanguageLabel()})",
        leadingIcon: FontAwesomeIcons.globe,
        trailingText: localizations.change,
        onTap: (context) {
          showLanguageSelectionSheet(context);
        },
      ),
    ];
  }

  static List<SettingItem> getOtherItems(BuildContext context) {
    final localizations = S.of(context);

    return [
      SettingItem(
        title: localizations.helpCenter,
        leadingIcon: FontAwesomeIcons.headset,
        onTap: (context) {},
      ),
      SettingItem(
        title: localizations.termsAndConditions,
        leadingIcon: FontAwesomeIcons.fileContract,
        onTap: (context) {
          context.pushNamed(Routes.terms);
        },
      ),
    ];
  }
}
