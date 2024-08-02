import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/date_helper.dart';

class DatePickerHelper {
  DateTime? selectedDate;
  TextEditingController? dateController;

  DatePickerHelper({this.selectedDate, this.dateController});

  Future<void> myShowDatePicker(BuildContext context, Function(DateTime) onDateSelected) async {
    DateTime initialDate = selectedDate ?? DateTime.now();

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1960),
      lastDate: DateTime(2020),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      selectedDate = pickedDate;
      if (dateController != null) {
        dateController!.text = DateHelper.formatCustomDate(
            selectedDate!,
            format: 'dd-MM-yyyy');
      }
      onDateSelected(selectedDate!);
    }
  }
}
