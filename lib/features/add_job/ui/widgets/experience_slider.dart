import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/widgets/app_label_text.dart';

class ExperienceSlider extends StatefulWidget {
  @override
  _ExperienceSliderState createState() => _ExperienceSliderState();
}

class _ExperienceSliderState extends State<ExperienceSlider> {
  double _startValue = 0;
  double _endValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabelText(labelText: "Select experience level"),
        verticalSpace(10),

        RangeSlider(
          values: RangeValues(_startValue, _endValue),
          min: 0,
          max: 10,
          divisions: 10,
          

          labels: RangeLabels(
            '${_startValue.round()} years',
            '${_endValue.round()} years',
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _startValue = values.start;
              _endValue = values.end;
            });
          },
        ),

        verticalSpace(20),

        Text(
          'Selected range: ${_startValue.round()} to ${_endValue.round()} years',
          style: TextStyle(fontSize: 18),
        ),

      ],
    );
  }
}
