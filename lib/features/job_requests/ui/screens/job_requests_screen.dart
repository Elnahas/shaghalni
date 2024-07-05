import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../widgets/job_requests_list_view.dart';
import '../widgets/job_status_list_view.dart';

class JobRequestsScreen extends StatelessWidget {
  const JobRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Requests',
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [

          JobStatusListView(),

          verticalSpace(10),
          
          JobRequestsListView()
        ],
      ),
    );
  }
}




