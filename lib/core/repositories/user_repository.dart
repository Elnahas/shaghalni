import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shaghalni/core/data/database/cache/cache_helper.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/utils/constants.dart';

class UserRepository {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    Future<UserModel?> getUser() async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.users).doc(FirebaseAuth.instance.currentUser!.uid).get();
      if (snapshot.exists) {
        return UserModel.fromJson(snapshot.data()!);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

    Future<void> saveUserToPreferences(UserModel user) async {
     await getIt<CacheHelper>().saveData(key: "user" , value:  jsonEncode(user.toJson()));
  }

   Future<UserModel?> getUserFromPreferences() async {
    String? userJson = getIt<CacheHelper>().getData(key: 'user');
    if (userJson != null) {
      Map<String, dynamic> userMap = jsonDecode(userJson);
      return UserModel.fromJson(userMap);
    }
    return null;
  }

}