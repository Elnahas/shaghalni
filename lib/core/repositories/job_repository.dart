import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/core/data/enum/job_status.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';

class JobRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  static const PAGE_SIZE = 4;

  Future<void> addJob(JobModel job) async {
    try {
      await firestore.collection(FirestoreCollections.jobs).add(job.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> fetchJobs(
      {String? cityId,
      String? searchQuery,
      bool ascending = true,
      String? categoryId,
      DocumentSnapshot? lastDocument}) async {
    Query query = firestore.collection(FirestoreCollections.jobs);

    // Apply ordering and pagination

    // Apply filters
    query = _applyFilters(query, cityId, searchQuery, categoryId);

    // Exclude jobs with state 'pending'
    query = query.where('status', isNotEqualTo: JobStatus.pending.name);
    query = query.orderBy('status', descending: !ascending);
    query = query.orderBy('title', descending: !ascending);

    if (lastDocument != null) {
      query = query.startAfterDocument(lastDocument).limit(PAGE_SIZE);
    } else {
      query = query.limit(PAGE_SIZE);
    }

    final querySnapshot = await query.get();
      List<JobModel> jobs = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        data['id'] = doc.id;

        return JobModel.fromJson(data);
      }).toList();

    return {
      'data': jobs,
      'lastDocument':
          querySnapshot.docs.isNotEmpty ? querySnapshot.docs.last : null,
    };
  }

  Future<List<JobModel>> getHomeJobs(
      {String? cityId,
      String? searchQuery,
      bool ascending = true,
      String? categoryId,
      int limit = 10}) async {
    try {
      Query query = firestore.collection(FirestoreCollections.jobs);

      // Apply filters
      query = _applyFilters(query, cityId, searchQuery, categoryId);

      // Exclude jobs with state 'pending'
      query = query.where('status', isNotEqualTo: JobStatus.pending.name);

      // Apply ordering and pagination
      query = query.orderBy('title', descending: !ascending);

      query = query.limit(limit);

      // Fetch the data
      QuerySnapshot<Object?> snapshot = await query.get();

      // Process the data
      List<JobModel> jobs = snapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        data['id'] = doc.id;

        return JobModel.fromJson(data);
      }).toList();

      return jobs;
    } catch (e) {
      rethrow;
    }
  }

  DocumentSnapshot? getLastDocument(QuerySnapshot<Object?> snapshot) {
    if (snapshot.docs.isNotEmpty) {
      return snapshot.docs.last;
    }
    return null;
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

  Query _applyFilters(
      Query query, String? cityId, String? searchQuery, String? categoryId) {
    if (cityId != null && cityId.isNotEmpty) {
      query = query.where('city.id', isEqualTo: cityId);
    }

    if (categoryId != null &&
        categoryId.isNotEmpty &&
        categoryId != Constants.allJobs) {
      query = query.where('category.id', isEqualTo: categoryId);
    }

    if (searchQuery != null && searchQuery.isNotEmpty) {
      query = query
          .where('title', isGreaterThanOrEqualTo: searchQuery)
          .where('title', isLessThanOrEqualTo: searchQuery + '\uf8ff');
    }

    return query;
  }
}
