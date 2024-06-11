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