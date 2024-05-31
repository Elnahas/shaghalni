import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/models/city_model.dart';

import '../utils/constants.dart';

class CityRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    Future<List<CityModel>> getCities() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.cities).get();

      List<CityModel> categories =
          snapshot.docs.map((e) => CityModel.fromJson(e.data())).toList();
      return categories;
    } catch (e) {
      rethrow;
    }
  }
}
