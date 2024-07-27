import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/generated/l10n.dart';

import '../data/enum/gender.dart';
import '../data/enum/job_type.dart';
import '../data/models/job_model.dart';

class AppLabels {
  AppLabels._();
  static String getGenderLabel(BuildContext context, Gender gender) {
    final localizations = S.of(context);
    switch (gender) {
      case Gender.male:
        return localizations.male;
      case Gender.female:
        return localizations.female;
      case Gender.both:
        return localizations.both;
      default:
        return '';
    }
  }

  static String getGenderJobLabel(BuildContext context, Gender gender) {
    final localizations = S.of(context);
    switch (gender) {
      case Gender.male:
        return localizations.males;
      case Gender.female:
        return localizations.females;
      case Gender.both:
        return localizations.both;
      default:
        return '';
    }
  }

  static String getJobTypeLabel(BuildContext context, JobType jobType) {
    final localizations = S.of(context);
    switch (jobType) {
      case JobType.fullTime:
        return localizations.full_time;
      case JobType.partTime:
        return localizations.part_time;
      case JobType.internship:
        return localizations.internship;
      case JobType.contract:
        return localizations.contract;
      case JobType.temporary:
        return localizations.temporary;
      case JobType.volunteer:
        return localizations.volunteer;
      default:
        return '';
    }
  }

  static String getExperienceLabel(
      ExperienceRange experienceRange, BuildContext context) {
    if (experienceRange.minExperience == experienceRange.maxExperience) {
      return S.of(context).experience_min_year(experienceRange.minExperience);
    } else {
      return S.of(context).experience_min_max_years(
          experienceRange.minExperience, experienceRange.maxExperience);
    }
  }

  static String getSelectedLanguageLabel() {
    switch (selectedLanguage) {
      case 'en':
        return 'English';
      case 'ar':
        return 'العربية';
      default:
        return 'English';
    }
  }
}
