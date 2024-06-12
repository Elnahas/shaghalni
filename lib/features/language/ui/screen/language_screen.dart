import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/routing/routes.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/generated/l10n.dart';

import '../../../../app/language_cubit.dart';
import '../../../../core/widgets/app_elevated_button.dart';
import '../widgets/flag_item_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedLanguage = "ar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lighterGray,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).select_language,
                style: TextStyles.font18BoldBlack,
              ),
              verticalSpace(20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlagItemWidget(
                      flagImagePath: "assets/icons/flag_en.png",
                      name: "English",
                      isSelected: selectedLanguage == "en",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "en";
                          context
                              .read<LanguageCubit>()
                              .changeLanguage(selectedLanguage);
                        });
                      }),
                  FlagItemWidget(
                      flagImagePath: "assets/icons/flag_ar.png",
                      name: "العربية",
                      isSelected: selectedLanguage == "ar",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "ar";
                          context
                              .read<LanguageCubit>()
                              .changeLanguage(selectedLanguage);
                        });
                      }),
                ],
              ),
              
              verticalSpace(50),
              AppElevatedButton(
                  buttonText: S.of(context).continue_,
                  onPressed: () async {
                    await SharedPrefHelper.setData(
                        SharedPrefKeys.selectedLanguage, selectedLanguage);

                    context.pushNamed(Routes.onboarding);
                  }
                  ),
              verticalSpace(20),
              Text(
                S.of(context).You_can_change_the_language_at_any_time,
                style: TextStyles.font13GreyW300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
