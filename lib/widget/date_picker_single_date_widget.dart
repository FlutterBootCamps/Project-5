import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saudia_app_project_5/constant/color.dart';

class SingleDayDatePicker extends StatefulWidget {
  const SingleDayDatePicker({super.key});

  @override
  State<SingleDayDatePicker> createState() => _SingleDayDatePickerState();
}

class _SingleDayDatePickerState extends State<SingleDayDatePicker> {

    DateTime dateSingle = DateTime.now();

  @override
  Widget build(BuildContext context) {

     final start = dateSingle;
    DateFormat dateFormating = DateFormat('E, dd MMM');


    return InkWell(
      onTap: 
        pickDate,
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
              Text("${dateFormating.format(start)}  ",
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

  pickDate() async{
    DateTime? newDate = await showDatePicker(  
      context: context, 
      firstDate: DateTime.now(), 
      lastDate: DateTime(2026),
      helpText: "Travel dates",      
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
      setState(() {
        dateSingle = newDate!;
      });
  }
}
