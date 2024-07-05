import 'package:flutter/material.dart';
import 'package:shaghalni/features/job_requests/ui/widgets/job_request_item.dart';

class JobRequestsListView extends StatelessWidget {
  const JobRequestsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => JobRequestItem(),
        itemCount: 10,
      ),
    );
  }
}

