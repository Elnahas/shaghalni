import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/generated/l10n.dart';

import '../data/enum/gender.dart';
import '../data/enum/job_status.dart';
import '../data/enum/job_type.dart';
import '../data/models/job_model.dart';

class AppLabels {
  AppLabels._();
  static String getGenderLabel(BuildContext context, Gender gender) {
    final localizations = S.of(context);
    final genderLabels = {
      Gender.male: localizations.male,
      Gender.female: localizations.female,
      Gender.both: localizations.both,
    };
    return genderLabels[gender] ?? '';
  }

  static String getGenderJobLabel(BuildContext context, Gender gender) {
    final localizations = S.of(context);
    final genderJobLabels = {
      Gender.male: localizations.males,
      Gender.female: localizations.females,
      Gender.both: localizations.both,
    };
    return genderJobLabels[gender] ?? '';
  }

  static String getJobTypeLabel(BuildContext context, JobType jobType) {
    final localizations = S.of(context);
    final jobTypeLabels = {
      JobType.fullTime: localizations.full_time,
      JobType.partTime: localizations.part_time,
      JobType.internship: localizations.internship,
      JobType.contract: localizations.contract,
      JobType.temporary: localizations.temporary,
      JobType.volunteer: localizations.volunteer,
    };
    return jobTypeLabels[jobType] ?? '';
  }

  static String getStatusLabel(BuildContext context, JobStatus status) {
    final localizations = S.of(context);
    final statusLabels = {
      JobStatus.all: localizations.all,
      JobStatus.open: localizations.open,
      JobStatus.closed: localizations.closed,
      JobStatus.pending: localizations.pending,
      JobStatus.reject: localizations.reject,
    };
    return statusLabels[status] ?? '';
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
