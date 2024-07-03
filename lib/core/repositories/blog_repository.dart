import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/models/blog_model.dart';
import '../helpers/constants.dart';

class BlogsRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<BlogModel>> getBlogs() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.blogs).get();

      List<BlogModel> blogs = snapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data();
        data['id'] = doc.id;

        return BlogModel.fromJson(data);
      }).toList();
      return blogs;
    } catch (e) {
      rethrow;
    }
  }


  
  Future<BlogModel?> getSingleBlog(String id) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.blogs).doc(id).get();
      if (snapshot.exists) {
        return BlogModel.fromJson(snapshot.data()!);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }



}
