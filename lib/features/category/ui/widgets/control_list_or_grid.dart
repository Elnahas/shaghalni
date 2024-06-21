import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ControlListOrGrid extends StatelessWidget {
  const ControlListOrGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.tableCellsLarge)),
      IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.list))
    ]);
  }
}
