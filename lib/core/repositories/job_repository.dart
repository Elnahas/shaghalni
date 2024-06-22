import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/enum/job_status.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

class JobRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addJob(JobModel job) async {
    try {
      await firestore.collection(FirestoreCollections.jobs).add(job.toJson());
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

      // List<JobModel> jobs =
      //     snapshot.docs.map((e) => JobModel.fromJson(e.data())).toList();

      List<JobModel> jobs = snapshot.docs.map((doc) {
        Json data = doc.data();
        data['id'] = doc.id;

        return JobModel.fromJson(data);
      }).toList();

      return jobs;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<JobModel>> getJobsByCategory(String categoryId) async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection(FirestoreCollections.jobs)
          .where('category.id', isEqualTo: categoryId)
          .where('status', isNotEqualTo: JobStatus.pending.name)
          // .orderBy('status', descending: true)
          // .orderBy('createAt', descending: true)
          .limit(10)
          .get();

      List<JobModel> jobs = snapshot.docs.map((doc) {
        Json data = doc.data();
        data['id'] = doc.id;

        return JobModel.fromJson(data);
      }).toList();

      return jobs;
    } catch (e) {
      rethrow;
    }
  }

  Future<JobModel?> getSingleJob(String id) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await firestore.collection(FirestoreCollections.jobs).doc(id).get();
      if (snapshot.exists) {
        return JobModel.fromJson(snapshot.data()!);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
