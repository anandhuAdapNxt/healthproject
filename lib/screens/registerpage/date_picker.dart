import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

//some more logics have to put in this widget
//for getting the date of birth

class DatePicker extends StatefulWidget {
  DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  //TextEditingController _dateOfBirth = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 327,
      child: TextField(
        keyboardType: TextInputType.number,
        //controller: _dateOfBirth,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 11.0, horizontal: 25),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffCECECE),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "      18    /  01  / 1998",
          fillColor: Color(0xffFFFFFF),
        ),
        onTap: () async {
          // DateTime? pickdate = await showDatePicker(
          //     context: context,
          //     initialDate: DateTime.now(),
          //     firstDate: DateTime(2000),
          //     lastDate: DateTime(2022));
          // if (pickdate != null) {
          //   setState(() {
          //     _dateOfBirth.text = DateFormat("yyyy--MM-dd").format(pickdate);
          //   });
          // }
          if (_selectedDate == null) {}
          final _selectedDateTemp = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365 * 100)),
            lastDate: DateTime.now(),
          );
          if (_selectedDate == null) {
            return;
          } else {
            setState(() {
              _selectedDate = _selectedDateTemp;
            });
          }
        },
      ),
    );
  }
}
