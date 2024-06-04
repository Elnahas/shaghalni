import 'package:shaghalni/core/data/database/cache/cache_helper.dart';

import '../di/service_locator.dart';

bool? getLoginStatus() {
  return getIt<CacheHelper>().getData(key: "userLoggedIn");
}

void updateLoginStatus(bool status) {
  getIt<CacheHelper>().put(key: "userLoggedIn", value: status);
}

bool? hasSeenOnboarding() {
  return getIt<CacheHelper>().getData(key: "hasSeenOnboarding");
}

void setOnboardingSeen(bool seen) {
  getIt<CacheHelper>().put(key: "hasSeenOnboarding", value: seen);
}
