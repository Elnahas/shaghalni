import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/generated/l10n.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_elevated_button.dart';
import '../../../language/logic/language_cubit.dart';

void showLanguageSelectionSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return LanguageSelectionSheet();
    },
  );
}

class LanguageSelectionSheet extends StatefulWidget {
  @override
  _LanguageSelectionSheetState createState() => _LanguageSelectionSheetState();
}

class _LanguageSelectionSheetState extends State<LanguageSelectionSheet> {
  String currentSelectedLanguage = selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 80,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: IconButton(
              icon: Icon(FontAwesomeIcons.xmark),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Text(S.of(context).select_language,
              style: AppTextStyles.font18BoldBlack),
          verticalSpace(5),
          Text(S.of(context).what_language_do_you_prefer,
              style: AppTextStyles.font16Regular),
          verticalSpace(20),
          _buildLanguageOption(
            context,
            'ar',
            'ع',
            'العربية',
            currentSelectedLanguage,
            Colors.green,
            (newLanguage) {
              setState(() {
                currentSelectedLanguage = newLanguage;
              });
            },
          ),
          Divider(thickness: 1, color: Colors.grey[300]),
          _buildLanguageOption(
            context,
            'en',
            'EN',
            'English',
            currentSelectedLanguage,
            Colors.blue,
            (newLanguage) {
              setState(() {
                currentSelectedLanguage = newLanguage;
              });
            },
          ),
          verticalSpace(20),
          AppElevatedButton(
            buttonText: S.of(context).confirm,
            onPressed: () async {
              if (selectedLanguage != currentSelectedLanguage) {
                selectedLanguage = currentSelectedLanguage;
                await SharedPrefHelper.setData(
                    SharedPrefKeys.selectedLanguage, currentSelectedLanguage);
                context
                    .read<LanguageCubit>()
                    .changeLanguage(currentSelectedLanguage);
              }

              Navigator.pop(context, currentSelectedLanguage);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String languageCode,
    String circleText,
    String languageName,
    String selectedLanguage,
    Color? backgroundColor,
    Function(String) onLanguageSelected,
  ) {
    return GestureDetector(
      onTap: () {
        onLanguageSelected(languageCode);
      },
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: backgroundColor,
              radius: 25.r,
              child: Text(circleText, style: TextStyle(color: Colors.white)),
            ),
            horizontalSpace(10),
            Text(languageName),
          ],
        ),
        trailing: selectedLanguage == languageCode
            ? Icon(FontAwesomeIcons.circleCheck, color: Colors.blue)
            : Icon(Icons.radio_button_unchecked, color: Colors.grey),
      ),
    );
  }
}
