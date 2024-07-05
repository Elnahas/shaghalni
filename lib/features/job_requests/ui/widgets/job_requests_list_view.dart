import 'package:flutter/material.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/features/job_requests/ui/widgets/job_request_item.dart';

class JobRequestsListView extends StatelessWidget {
  final List<JobModel> jobsList;
  const JobRequestsListView({
    super.key, required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => JobRequestItem(jobModel : jobsList[index]),
        itemCount: jobsList.length,
      ),
    );
  }
}

