import 'package:flutter/material.dart';

class DistanceDrivenDropdown extends StatefulWidget {
  const DistanceDrivenDropdown({super.key});

  @override
  _DistanceDrivenDropdownState createState() => _DistanceDrivenDropdownState();
}

class _DistanceDrivenDropdownState extends State<DistanceDrivenDropdown> {
  var _dropdownValue = 'Car Care Calculated';
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
        'Car Care Calculated',
        'My Estimate',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value, style: const TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
