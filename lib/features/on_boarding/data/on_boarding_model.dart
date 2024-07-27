import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class OnBoardingModel {
  final String imagePath;
  final String titleKey;
  final String subTitleKey;

  OnBoardingModel({
    required this.imagePath,
    required this.titleKey,
    required this.subTitleKey,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      imagePath: 'assets/images/onboarding_1.png',
      titleKey: 'onboarding_title_1',
      subTitleKey: 'onboarding_subtitle_1',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/onboarding_2.png',
      titleKey: 'onboarding_title_2',
      subTitleKey: 'onboarding_subtitle_2',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/onboarding_3.png',
      titleKey: 'onboarding_title_3',
      subTitleKey: 'onboarding_subtitle_3',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/onboarding_4.png',
      titleKey: 'onboarding_title_4',
      subTitleKey: 'onboarding_subtitle_4',
    ),
  ];

  String getTitle(BuildContext context) {
    switch (titleKey) {
      case 'onboarding_title_1':
        return S.of(context).onboarding_title1;
      case 'onboarding_title_2':
        return S.of(context).onboarding_title2;
      case 'onboarding_title_3':
        return S.of(context).onboarding_title3;
      case 'onboarding_title_4':
        return S.of(context).onboarding_title4;
      default:
        return '';
    }
  }

  String getSubTitle(BuildContext context) {
    switch (subTitleKey) {
      case 'onboarding_subtitle_1':
        return S.of(context).onboarding_subtitle1;
      case 'onboarding_subtitle_2':
        return S.of(context).onboarding_subtitle2;
      case 'onboarding_subtitle_3':
        return S.of(context).onboarding_subtitle3;
      case 'onboarding_subtitle_4':
        return S.of(context).onboarding_subtitle4;
      default:
        return '';
    }
  }
}