import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/features/add_job/logic/cubit/add_job_cubit.dart';
import 'package:shaghalni/features/add_job/ui/widgets/page_view_bloc_consumer.dart';
import '../../../../core/data/models/job_model.dart';
import '../widgets/add_job_app_bar.dart';
import '../widgets/button_add_job_bloc_builder.dart';
import '../widgets/my_page_indicator.dart';

class AddJobScreen extends StatefulWidget {
  final JobModel? jobModel;
  const AddJobScreen({super.key, this.jobModel});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  late PageController pageController;
  late final AddJobCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<AddJobCubit>();
    pageController = _cubit.pageController;
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
                if (didPop) {
          Navigator.pop(context);
        } else {
          onWillPop(context, 'Are you sure you want to exit?');
        }
      },
      child: Scaffold(
        appBar: AddJobAppBar(),
        backgroundColor: AppColors.lighterGray,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              MyPageIndicator(pageController),
              verticalSpace(10),
              Expanded(
                child: PageViewBlocConsumer(
                  pageController: pageController,
                ),
              ),
              ButtonAddJobBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
