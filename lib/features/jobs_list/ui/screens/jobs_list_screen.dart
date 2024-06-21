import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/widgets/app_text_form_field.dart';

class JobsListScreen extends StatelessWidget {
  const JobsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Jobs"),
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
                      child: TopBarSearch())
                ],
              ),
            ),
          ],
        ));
  }
}

class TopBarSearch extends StatelessWidget {
  const TopBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
              hintText: "Search by title job",
              validator: (value) {},
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              suffixIcon: TextButton(child: Text("Search"), onPressed: () {}),
              ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.sort)),
        IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.filter)),
      ],
    );
  }
}
