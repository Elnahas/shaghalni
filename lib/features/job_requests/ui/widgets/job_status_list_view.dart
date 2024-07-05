import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/data/enum/job_status.dart';
import '../screens/job_status_item.dart';

class JobStatusListView extends StatefulWidget {
  const JobStatusListView({super.key});

  @override
  State<JobStatusListView> createState() => _JobStatusListViewState();
}

class _JobStatusListViewState extends State<JobStatusListView> {
  int selectedStateJobIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 55.h,
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  selectedStateJobIndex = index;
                  setState(() {});
                },
                child: JobStatusItem(
                    selectedStateJobIndex: selectedStateJobIndex, index: index),
              ),
            );
          },
          itemCount: JobStatus.values.length,
        ));
  }
}
