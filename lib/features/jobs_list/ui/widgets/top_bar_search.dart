
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/app_text_form_field.dart';

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
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.sort)),
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.filter)),
      ],
    );
  }
}
