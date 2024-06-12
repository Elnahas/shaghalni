import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/features/language/ui/widgets/flag_item_widget.dart';

import '../../../../app/language_cubit.dart';

class FlagSection extends StatelessWidget {
  final String selectedLanguage;
  const FlagSection({super.key, required this.selectedLanguage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlagItemWidget(
            flagImagePath: "assets/icons/flag_en.png",
            name: "English",
            isSelected: selectedLanguage == "en",
            onTap: () {
              context.read<LanguageCubit>().changeLanguage(selectedLanguage);
            }),
        FlagItemWidget(
            flagImagePath: "assets/icons/flag_ar.png",
            name: "العربية",
            isSelected: selectedLanguage == "ar",
            onTap: () {
              context.read<LanguageCubit>().changeLanguage(selectedLanguage);
            }),
      ],
    );
  }
}
