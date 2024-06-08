import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/di/service_locator.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/helpers/constants.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final storageRef = FirebaseStorage.instance.ref();

  Future<UserModel?> getUser() async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore
          .collection(FirestoreCollections.users)
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      if (snapshot.exists) {
        return UserModel.fromJson(snapshot.data()!);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

   Future<String> uploadImage(File imageFile) async {
    try {
      final imageName = DateTime.now().millisecondsSinceEpoch.toString();
      final imageRef = storageRef.child('images_users/$imageName');
      final uploadTask = imageRef.putFile(imageFile);
      final TaskSnapshot taskSnapshot = await uploadTask;
      final downloadUrl = await taskSnapshot.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUserToPreferences(UserModel user) async {

    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userData, jsonEncode(user.toJson())); 

    // await getIt<CacheHelper>()
    //     .saveData(key: "user", value: jsonEncode(user.toJson()));
  }

  Future<UserModel?> getUserFromPreferences() async {

    // String? userJson = getIt<CacheHelper>().getData(key: 'user');
    String? userJson = SharedPrefHelper.getSecuredString(SharedPrefKeys.userData);

    if (userJson != null) {
      Map<String, dynamic> userMap = jsonDecode(userJson);
      return UserModel.fromJson(userMap);
    }
    return null;
  }
}
