import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghalni/core/helpers/date_helper.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerHelper {
  DateTime? selectedDate;
  TextEditingController? dateController;

  DatePickerHelper({this.selectedDate, this.dateController});

  Future<void> myShowDatePicker(BuildContext context, Function(DateTime) onDateSelected) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            height: 400.h,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SfDateRangePicker(
              view: DateRangePickerView.decade,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is DateTime) {
                  selectedDate = args.value;
                  if (dateController != null) {
                    dateController!.text = DateHelper.formatCustomDate(
                        selectedDate!,
                        format: 'dd-MM-yyyy');
                  }
                  onDateSelected(selectedDate!); 
                  Navigator.of(context).pop(); 
                }
              },
              selectionMode: DateRangePickerSelectionMode.single,
              initialSelectedDate: selectedDate ?? DateTime.now(),
              minDate: DateTime(1900),
              maxDate: DateTime(2100),
              headerStyle: DateRangePickerHeaderStyle(
                backgroundColor: Colors.blue,
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
              monthViewSettings: DateRangePickerMonthViewSettings(
                viewHeaderStyle: DateRangePickerViewHeaderStyle(
                  backgroundColor: Colors.blue[50],
                  textStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              selectionTextStyle: TextStyle(color: Colors.white),
              selectionColor: Colors.blue,
              todayHighlightColor: Colors.blue,
              backgroundColor: Colors.white,
              startRangeSelectionColor: Colors.blue,
              endRangeSelectionColor: Colors.blue,
              rangeSelectionColor: Colors.blue.withOpacity(0.3),
            ),
          ),
        );
      },
    );
  }
}