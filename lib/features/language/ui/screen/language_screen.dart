import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/features/language/logic/language_cubit.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/features/language/ui/widgets/flag_section.dart';
import 'package:shaghalni/generated/l10n.dart';
import '../../../../core/widgets/app_elevated_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lighterGray,
      body: SafeArea(
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (context, locale) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).select_language,
                    style: AppTextStyles.font18BoldBlack,
                  ),
                  verticalSpace(20),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child:
                          FlagSection(selectedLanguage: locale.languageCode)),
                  verticalSpace(50),
                  AppElevatedButton(
                    buttonText: S.of(context).continue_,
                    onPressed: () async {

                      await SharedPrefHelper.setData(
                        SharedPrefKeys.selectedLanguage,
                        locale.languageCode,
                      );

                      selectedLanguage = locale.languageCode;



                      context.pushNamed(Routes.onboarding);
                    },
                  ),
                  verticalSpace(20),
                  Text(
                    S.of(context).You_can_change_the_language_at_any_time,
                    style: AppTextStyles.font13GreyW300,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
