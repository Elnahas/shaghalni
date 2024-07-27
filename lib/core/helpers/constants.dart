import 'package:shaghalni/core/data/models/user_model.dart';

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
  static const String blogs = 'blogs';
  static const String cities = 'cities';
  static const String jobs = 'jobs';
}
class Constants {
  static const String viewAll = 'All';
  static const String imgUrlTest = 'https://cloudworkers.company/themes/cloudworkers/assets/img/blog/blog-work-from-home.jpg';
  static const String imgUrlAllJobs = 'https://cdn-icons-png.flaticon.com/256/11656/11656146.png'; // https://cdn-icons-png.freepik.com/512/9045/9045148.png
}