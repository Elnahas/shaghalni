import 'package:flutter/material.dart';

class SettingItem {
  final String title;
  final IconData leadingIcon;
  final String? trailingText;
  final IconData? trailingIcon;
  final void Function(BuildContext context) onTap;

  SettingItem({
    required this.title,
    required this.leadingIcon,
    this.trailingText,
    this.trailingIcon,
    required this.onTap,
  });
}