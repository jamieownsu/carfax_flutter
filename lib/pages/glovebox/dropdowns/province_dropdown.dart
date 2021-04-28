import 'package:flutter/material.dart';

class ProvinceDropdown extends StatefulWidget {
  ProvinceDropdown({Key key}) : super(key: key);

  @override
  _ProvinceDropdownState createState() => _ProvinceDropdownState();
}

class _ProvinceDropdownState extends State<ProvinceDropdown> {
  var _dropdownValue = 'Ontario';
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
        'Alberta',
        'British Columbia',
        'Manitoba',
        'Newfoundland and Labrador',
        'Northwest Territories',
        'Nova Scotia',
        'Nunavut',
        'Ontario',
        'Prince Edward Island',
        'Quebec',
        'Saskatchewon',
        'Yukon'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value, child: Text(value, style: TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
