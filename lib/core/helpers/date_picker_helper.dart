import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:intl/intl.dart';

class DatePickerHelper {
  DateTime? selectedDate;
  TextEditingController? dateController;

  DatePickerHelper({this.selectedDate, this.dateController});

  Future<void> myShowDatePicker(BuildContext context) async {
    final DateTime? picked = await DatePicker.showSimpleDatePicker(
      context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2024),
      dateFormat: "dd-MMMM-yyyy",
      locale: DateTimePickerLocale.en_us,
      looping: true,
    );

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      if (dateController != null) {
        dateController!.text = DateFormat('dd-MM-yyyy').format(selectedDate!);
      }
    }
  }
}