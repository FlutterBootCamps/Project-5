import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saudia_app_project_5/constant/color.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTimeRange dateRange = DateTimeRange(start: DateTime.now(), end: DateTime.now().add(const Duration(days: 4)) );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    DateFormat dateFormating = DateFormat('E, dd MMM');


    return InkWell(
      onTap: 
        pickDateRange,       
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: white,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Travel dates",
                style: TextStyle(color: grey, fontSize: 14),
              ),
              Text("${dateFormating.format(start)}  - ${dateFormating.format(end)} ",
                // currentDate,
                style: const TextStyle(color: black, fontSize: 18),
              ),
            ],
          ),
          const Icon(
            Icons.calendar_today,
            color: grey,
          )
        ]),
      ),
    );
  }

  pickDateRange() async{
    DateTimeRange? newDateRange = await showDateRangePicker(  
      context: context, 
      initialDateRange: dateRange,
      firstDate: DateTime.now(), 
      lastDate: DateTime(2026),
      helpText: "Travel dates",
      saveText: "Confirm",
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: green,
            onPrimary: white, 
            onSurface: black, 
            onSecondary: Color.fromARGB(50, 76, 175, 79),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: black,
            ),
          ),
        ),
        child: child!,
      );
    },
    );

      if(newDateRange == null ) return;
      setState(() {
        dateRange = newDateRange;
      });
  }
}
