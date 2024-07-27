import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class HeaderTextLoginWidgets extends StatelessWidget {
  const HeaderTextLoginWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).what_is_your_phone_number,
            style: AppTextStyles.font24BoldBlack),
        verticalSpace(20),
        Text(S.of(context).please_enter_your_phone_number_to_verify,
            style: AppTextStyles.font14BlackW300),
      ],
    );
  }
}
