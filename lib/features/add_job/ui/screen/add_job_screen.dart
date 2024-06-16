import 'package:flutter/material.dart';
import 'package:shaghalni/core/functions/show_modal_bottom_sheet.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import 'package:shaghalni/core/widgets/app_text_button.dart';
import '../../../../core/widgets/select_list_widget.dart';
import '../widgets/add_job_app_bar.dart';
import '../widgets/add_job_form.dart';
import '../widgets/my_page_indicator.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key});

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  PageController myController = PageController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyPageIndicator(myController),
                ],
              ),
              Expanded(
                child: PageView(
                  //physics: NeverScrollableScrollPhysics(),
                  children: [
                    SelectListWidget(
                      title: "Select Category",
                      items: [],
                      initialSelectedIndex: -1,
                      onItemSelected: (asd) {},
                      itemBuilder: (category) => category.name,
                    ),
                    SelectListWidget(
                      title: "Select City",
                      items: [],
                      initialSelectedIndex: -1,
                      onItemSelected: (asd) {},
                      itemBuilder: (city) => city.name,
                    ),
                    const AddJobForm(),
                  ],
                  controller: myController,
                ),
              ),
              AppTextButton(
                  buttonText: "Next",
                  onPressed: () {
                    myController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
