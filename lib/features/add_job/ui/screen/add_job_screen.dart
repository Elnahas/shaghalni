import 'package:flutter/material.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/features/add_job/ui/widgets/add_job_bloc_builder.dart';
import '../widgets/add_job_app_bar.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop)  {
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
    
              Expanded(child: AddJobBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
