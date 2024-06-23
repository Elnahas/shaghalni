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

  Future<List<JobModel>> getJobs({
    String? cityId,
    String? searchQuery,
    bool ascending = true,
    String? categoryId,
  }) async {
    try {
      Query query = firestore.collection(FirestoreCollections.jobs);

      // Filter by city if provided
      if (cityId != null && cityId.isNotEmpty) {
        query = query.where('city.id', isEqualTo: cityId);
      }

      // Filter by category if provided
      if (categoryId != null && categoryId.isNotEmpty && categoryId != Constants.allJobs) {
        query = query.where('category.id', isEqualTo: categoryId);
      }

      // Exclude jobs with state 'waiting'
      query = query.where('status', isNotEqualTo: JobStatus.pending.name);

      // Search by job title if provided
      if (searchQuery != null && searchQuery.isNotEmpty) {
        query = query
            .where('title', isGreaterThanOrEqualTo: searchQuery)
            .where('title', isLessThanOrEqualTo: searchQuery + '\uf8ff');
      }

      // Order by salary
      //query = query.orderBy('salary', descending: !ascending);

      // Fetch the data
      QuerySnapshot<Object?> snapshot = await query.get();

      // Process the data
      List<JobModel> jobs = snapshot.docs.map((doc) {
        Json data = doc.data() as Map<String, dynamic>;
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
