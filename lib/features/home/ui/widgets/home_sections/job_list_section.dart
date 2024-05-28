import 'package:flutter/material.dart';
import 'package:shaghalni/features/home/ui/widgets/job_items_widget.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_header_section.dart';

class JobListSection extends StatelessWidget {
  const JobListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaderSection(
          text: "Recently added jobs",
        ),
        verticalSpace(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.55,
              ),
              itemBuilder: (context, index) => const JobItemsWidget()),
        ),
      ],
    );
  }
}
