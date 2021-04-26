import 'package:flutter/material.dart';

class KmMilesDropdown extends StatefulWidget {
  KmMilesDropdown({Key key, @required this.callback}) : super(key: key);

  final Function callback;

  @override
  _KmMilesDropdownState createState() => _KmMilesDropdownState();
}

class _KmMilesDropdownState extends State<KmMilesDropdown> {
  var _dropdownValue = 'Kilometers';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: _dropdownValue,
      style: TextStyle(fontSize: 12),
      onChanged: (String newValue) {
        setState(() => _dropdownValue = newValue);
        widget.callback(_dropdownValue);
      },
      items: <String>[
        'Kilometers',
        'Miles',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value, child: Text(value, style: TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
