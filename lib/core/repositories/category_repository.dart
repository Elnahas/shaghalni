import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import '../helpers/constants.dart';

class CategoryRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.categories).get();

      List<CategoryModel> categories =
          snapshot.docs.map((e) => CategoryModel.fromJson(e.data())).toList();
      return categories;
    } catch (e) {
      rethrow;
    }
  }
}
