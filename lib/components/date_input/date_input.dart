import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInput extends StatelessWidget {
  final DateTime value;
  final Function onDateSelect;
  final String placeholder;

  DateInput({this.value, this.onDateSelect, this.placeholder = "Select date"});

  Future<void> openDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: value != null ? value : DateTime.now(),
        firstDate: DateTime(1970, 1),
        lastDate: DateTime(2099, 12));

    print(picked);
    if (picked != null && onDateSelect != null) {
      onDateSelect(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openDatePicker(context);
      },
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: const Border(
                  bottom: BorderSide(color: Colors.black54, width: 1))),
          child: value != null
              ? Text(DateFormat('dd-MMMM-yyyy').format(value),
                  style: TextStyle(color: Colors.black, fontSize: 17))
              : Text(placeholder,
                  style: TextStyle(color: Colors.black54, fontSize: 17))),
    );
  }
}
