import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../../core/models/user_model.dart';

class SignupRepo {
  final FirebaseFirestore firestore;

  SignupRepo({required this.firestore});

  Future<ApiResult> signup(UserModel userModel) async {
    try {
      await firestore.doc(userModel.uid).set(userModel.toJson());

      return ApiResult.success(userModel);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
