bool isLoggedInUser = false;
bool isSeenOnboarding = false;

class SharedPrefKeys {
  static const String userToken = 'userToken';
  static const String userData = 'userData';
  static const String hasSeenOnboarding = 'hasSeenOnboarding';
}

class FirestoreCollections {
  static const String users = 'users';
  static const String categories = 'categories';
  static const String cities = 'cities';
  static const String jobs = 'jobs';
}