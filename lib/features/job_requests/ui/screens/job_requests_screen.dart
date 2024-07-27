import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/job_requests/ui/widgets/job_requests_bloc_builder.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../widgets/job_status_list_view.dart';

class JobRequestsScreen extends StatelessWidget {
  const JobRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).job_requests,
          style: AppTextStyles.font18BoldBlack,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          JobStatusListView(),
          verticalSpace(10),
          JobRequestsBlocBuilder()

        ],
      ),
    );
  }

}