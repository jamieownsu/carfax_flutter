import 'package:carfax/data/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KmMilesDropdown extends StatefulWidget {
  KmMilesDropdown({Key key}) : super(key: key);

  @override
  _KmMilesDropdownState createState() => _KmMilesDropdownState();
}

class _KmMilesDropdownState extends State<KmMilesDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: context.watch<UserVehicle>().metric ? 'Kilometers' : 'Miles',
      style: TextStyle(fontSize: 12),
      onChanged: (String newValue) {
        setState(() {
          context.read<UserVehicle>().metric = newValue == 'Kilometers';
        });
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
