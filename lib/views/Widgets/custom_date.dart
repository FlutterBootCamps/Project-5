
import 'package:flutter/material.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super. key }) ;


  @override
  DatePickerState createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  DateTime selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:   Text("${selectedDay.month}:${selectedDay.day}",style: TextStyle(color: Colors.amber)),

      ),
      body: Column(
        children: [
          WeeklyDatePicker(
            selectedDay: selectedDay,
            changeDay: (value) => setState(() {
              selectedDay = value;
            }),
            enableWeeknumberText: false,
            weeknumberColor: const Color(0xFF57AF87),
            weeknumberTextColor: Colors.white,
            backgroundColor: const Color(0xFF1A1A1A),
            weekdayTextColor: const Color(0xFF8A8A8A),
            digitsColor: Colors.white,
            selectedDigitBackgroundColor: const Color(0xFF57AF87),
            weekdays: const ["Mo", "Tu", "We", "Th", "Fr"],
            daysInWeek: 5,
          ),
        ],
      ),
    );
  }
}