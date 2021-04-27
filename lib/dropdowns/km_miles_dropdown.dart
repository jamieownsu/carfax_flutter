import 'package:carfax/state/inherited_state.dart';
import 'package:flutter/material.dart';

class KmMilesDropdown extends StatefulWidget {
  KmMilesDropdown({Key key}) : super(key: key);

  // final Function callback;

  @override
  _KmMilesDropdownState createState() => _KmMilesDropdownState();
}

class _KmMilesDropdownState extends State<KmMilesDropdown> {
  @override
  Widget build(BuildContext context) {
    var vehicle = InheritedVehicleState.of(context).vehicle;
    return DropdownButton<String>(
      isExpanded: true,
      value: vehicle.metric ? 'Kilometers' : 'Miles',
      style: TextStyle(fontSize: 12),
      onChanged: (String newValue) {
        setState(() {
          vehicle.metric = newValue == 'Kilometers';
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
