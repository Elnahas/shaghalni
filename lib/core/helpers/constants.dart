import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/data/models/user_model.dart';

import '../data/enum/gender.dart';
import '../data/models/job_model.dart';

UserModel? userModel;
bool isLoggedInUser = false;
bool isSeenOnboarding = false;
String selectedLanguage = ""; //Default Language

class SharedPrefKeys {
  static const String userToken = 'userToken';
  static const String userData = 'userData';
  static const String hasSeenOnboarding = 'hasSeenOnboarding';
  static const String selectedLanguage = 'selectedLanguage';
}

class FirestoreCollections {
  static const String users = 'users';
  static const String categories = 'categories';
  static const String cities = 'cities';
  static const String jobs = 'jobs';
}

  String getGenderLabel(Gender gender) {
    switch (gender) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.both:
        return 'Both';
      default:
        return '';
    }
  }

  String getJobTypeLabel(JobType jobType) {
    switch (jobType) {
      case JobType.fullTime:
        return 'Full - Time';
      case JobType.partTime:
        return 'Part - Time';
      case JobType.internship:
        return 'Internship';
      case JobType.contract:
        return 'Contract';
      case JobType.temporary:
        return 'Temporary';
      case JobType.volunteer:
        return 'Volunteer';
      default:
        return '';
    }
  }


  String getExperienceLabel(ExperienceRange experienceRange) {
  if (experienceRange.minExperience == experienceRange.maxExperience) {
    return "${experienceRange.minExperience} Year";
  } else {
    return "${experienceRange.minExperience} - ${experienceRange.maxExperience} Years";
  }
}