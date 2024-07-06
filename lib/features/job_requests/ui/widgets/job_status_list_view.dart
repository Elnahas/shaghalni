import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/features/job_requests/logic/cubit/job_requests_cubit.dart';
import '../../../../core/data/enum/job_status.dart';
import 'job_status_item.dart';

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
                  var status = index == 0 ? Constants.viewAll : JobStatus.values[index].name;
                  context.read<JobRequestsCubit>().getJobRequests(userModel!.uid , status: status);
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
