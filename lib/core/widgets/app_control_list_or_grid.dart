import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

class AppControlListOrGrid extends StatelessWidget {
  final ValueNotifier<bool> isGridView;

  const AppControlListOrGrid({
    required this.isGridView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isGridView,
      builder: (context, isGrid, _) {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                isGridView.value = true;
              },
              icon: Icon(FontAwesomeIcons.tableCellsLarge),
              color: isGrid ? AppColors.primaryColor : AppColors.lightGrey,
            ),
            IconButton(
              onPressed: () {
                isGridView.value = false;
              },
              icon: Icon(
                FontAwesomeIcons.list,
                color: !isGrid ? AppColors.primaryColor : AppColors.lightGrey,
              ),
            ),
          ],
        );
      },
    );
  }
}