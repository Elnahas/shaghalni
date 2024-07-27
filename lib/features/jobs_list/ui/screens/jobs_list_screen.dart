import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/features/jobs_list/ui/widgets/category_bloc_builder.dart';
import '../../../../generated/l10n.dart';
import '../widgets/jobs_list_bloc_builder.dart';
import '../widgets/top_bar_search.dart';

class JobsListScreen extends StatelessWidget {
  const JobsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text( S.of(context).jobs),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: TopBarSearch()),
                  verticalSpace(20),
                  CategoryBlocBuilder(),
                  verticalSpace(10),
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 14.w),
            //   child: Row(
            //     children: [
            //       Text(
            //         "Results : 10",
            //         style: AppTextStyles.font12BlackRegular,
            //       ),
            //       Spacer(),
            //       AppControlListOrGrid(isGridView: ValueNotifier<bool>(true)),
            //     ],
            //   ),
            // ),
            verticalSpace(10),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: JobsListBlocBuilder(scrollController: ScrollController(), ),
              ),
            ),
          ],
        ));
  }
}
