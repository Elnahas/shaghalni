import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/features/job_form/logic/cubit/job_form_cubit.dart';
import 'package:shaghalni/features/job_form/ui/widgets/page_view_bloc_consumer.dart';
import 'package:shaghalni/generated/l10n.dart';
import '../../../../core/data/models/job_model.dart';
import '../widgets/job_form_app_bar.dart';
import '../widgets/job_form_button_bloc_builder.dart';
import '../widgets/my_page_indicator.dart';

class JobFormScreen extends StatefulWidget {
  final JobModel? jobModel;
  const JobFormScreen({super.key, this.jobModel});

  @override
  State<JobFormScreen> createState() => _JobFormScreenState();
}

class _JobFormScreenState extends State<JobFormScreen> {
  late PageController pageController;
  late final JobFormCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<JobFormCubit>();
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
          onWillPop(context, S.of(context).exit_confirmation);
        }
      },
      child: Scaffold(
        appBar: JobFormAppBar(),
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
              JobFormButtonBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
