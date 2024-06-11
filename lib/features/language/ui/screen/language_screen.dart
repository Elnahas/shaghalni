import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool isEnglishSelected = false;
  bool isArabicSelected = true;

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
                'Select Language',
                style: TextStyles.font18BoldBlack,
              ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlagItem(
                      flagImagePath: "assets/icons/flag_en.png",
                      name: "English",
                      isSelected: isEnglishSelected,
                      onTap: () {
                        setState(() {
                          isEnglishSelected = true;
                          isArabicSelected = false;
                        });
                      }),
                  FlagItem(
                      flagImagePath: "assets/icons/flag_ar.png",
                      name: "العربية",
                      isSelected: isArabicSelected,
                      onTap: () {
                         setState(() {
                          isArabicSelected = true;
                          isEnglishSelected = false;
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FlagItem extends StatelessWidget {
  final String flagImagePath;
  final String name;
  final bool isSelected;
  final void Function()? onTap;

  const FlagItem({
    super.key,
    required this.flagImagePath,
    required this.name,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(color: ColorsManager.primaryColor, width: 2)
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 8,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 75,
              width: 125,
              child: Image.asset(
                flagImagePath,
                fit: BoxFit.fill,
              )),
          verticalSpace(20),
          Text(name, style: TextStyles.font18BoldBlack),
        ]),
      ),
    );
  }
}
