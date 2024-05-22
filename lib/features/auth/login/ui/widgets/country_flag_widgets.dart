import 'package:flutter/widgets.dart';

import '../../../../../core/functions/generate_country_flag.dart';
import '../../../../../core/theming/app_colors.dart';

class CountryFlagWidgets extends StatelessWidget {
  const CountryFlagWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.lightGrey),
            borderRadius:const BorderRadius.all(Radius.circular(6)),
          ),
          child: Text(
            '${generateCountryFlag()} +20',
            style:const TextStyle(fontSize: 18, letterSpacing: 2.0),
          ),
        );
  }
}