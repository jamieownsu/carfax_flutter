import 'package:flutter/material.dart';

class RegistrationDropdown extends StatefulWidget {
  RegistrationDropdown({Key key}) : super(key: key);

  @override
  _RegistrationDropdownState createState() => _RegistrationDropdownState();
}

class _RegistrationDropdownState extends State<RegistrationDropdown> {
  var _dropdownValue = 'Two Years';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: _dropdownValue,
      style: TextStyle(fontSize: 12),
      onChanged: (String newValue) {
        setState(() => _dropdownValue = newValue);
      },
      items: <String>[
        'One Year',
        'Two Years',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value, child: Text(value, style: TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
