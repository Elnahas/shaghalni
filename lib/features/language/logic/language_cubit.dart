import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/helpers/extentions.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit()
      : super(
            Locale(selectedLanguage.isNullOrEmpty() ? "en" : selectedLanguage));

  void changeLanguage(String languageCode) {
    emit(Locale(languageCode));
  }
}
