import 'package:carfax/data/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KmMilesDropdown extends StatefulWidget {
  const KmMilesDropdown({super.key});

  @override
  _KmMilesDropdownState createState() => _KmMilesDropdownState();
}

class _KmMilesDropdownState extends State<KmMilesDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: context.watch<UserVehicle>().metric ? 'Kilometers' : 'Miles',
      style: const TextStyle(fontSize: 12),
      onChanged: (value) {
        setState(() {
          context.read<UserVehicle>().metric = value == 'Kilometers';
        });
      },
      items: <String>[
        'Kilometers',
        'Miles',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value, style: const TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
