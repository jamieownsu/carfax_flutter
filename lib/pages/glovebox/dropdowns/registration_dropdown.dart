import 'package:flutter/material.dart';

class RegistrationDropdown extends StatefulWidget {
  const RegistrationDropdown({super.key});

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
      style: const TextStyle(fontSize: 12),
      onChanged: (newValue) {
        setState(() => _dropdownValue = newValue!);
      },
      items: <String>[
        'One Year',
        'Two Years',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value, style: const TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
