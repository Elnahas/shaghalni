import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

class JobRepository {
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

  Future<List<JobModel>> getJobs() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection(FirestoreCollections.jobs)
          // .where('status', isEqualTo: JobStatus.pending.name)
          .get();
      List<JobModel> jobs = snapshot.docs
          .map((e) => JobModel.fromJson(e.data()))
          .toList();
      return jobs;
    } catch (e) {
      rethrow;
    }
  }
}
