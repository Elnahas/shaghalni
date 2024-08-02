import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/helpers/shared_pref_helper.dart';
import 'package:shaghalni/core/helpers/constants.dart';

import '../data/models/city_model.dart';

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

  Future<void> updateUserProfile({
    required String uid,
    String? firstName,
    String? lastName,
    String? birthDate,
    String? gender,
    CityModel? city,
    File? newImageFile,
  }) async {
    try {
      String? imageUrl;
      if (newImageFile != null) {
        bool isNetworkImage = newImageFile.path.startsWith('http') ||
            newImageFile.path.startsWith('https');

        if (!isNetworkImage) {
          imageUrl = await uploadImage(newImageFile);
        }
      }

      final userDoc =
          _firestore.collection(FirestoreCollections.users).doc(uid);

      await userDoc.update({
        if (firstName != null) 'first_name': firstName,
        if (lastName != null) 'last_name': lastName,
        if (birthDate != null) 'birth_date': birthDate,
        if (gender != null) 'gender': gender,
        if (city != null) 'city': city.toJson(),
        if (imageUrl != null) 'image_url': imageUrl,
      });
    } catch (e) {
      throw Exception('Failed to update profile');
    }
  }

  Future<void> saveUserToPreferences(UserModel user) async {
    await SharedPrefHelper.setSecuredString(
        SharedPrefKeys.userData, jsonEncode(user.toJson()));

    // await getIt<CacheHelper>()
    //     .saveData(key: "user", value: jsonEncode(user.toJson()));
  }

  Future<UserModel> getUserFromPreferences() async {
    String? userData =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userData);
    Map<String, dynamic> userMap = jsonDecode(userData!);
    UserModel user = UserModel.fromJson(userMap);

    return user;
  }
}
