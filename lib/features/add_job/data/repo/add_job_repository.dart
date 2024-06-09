import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

class AddJobRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addJob(JobModel job) async {
    try {
      await firestore
          .collection(FirestoreCollections.jobs)
          .doc(job.id)
          .set(job.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
