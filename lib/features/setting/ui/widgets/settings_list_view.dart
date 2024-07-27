import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../data/setting_item_model.dart';

class SettingsListView extends StatelessWidget {
  final String title;
  final List<SettingItem> items;

  SettingsListView({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.font18BoldBlack,
        ),
        verticalSpace(10),
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
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final item = items[index];
              return Material(
                color: Colors.transparent, 
                child: InkWell(
                  onTap: () => item.onTap(context),
                  child: ListTile(
                    leading: Icon(item.leadingIcon),
                    title: Text(item.title),
                    trailing: item.trailingText != null
                        ? Text(item.trailingText!)
                        : Icon(item.trailingIcon ?? Icons.chevron_right),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}