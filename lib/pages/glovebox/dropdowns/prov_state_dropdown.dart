import 'package:carfax/constants/prov_state.dart';
import 'package:carfax/data/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvinceStateDropdown extends StatefulWidget {
  const ProvinceStateDropdown({super.key});

  @override
  _ProvinceStateDropdownState createState() => _ProvinceStateDropdownState();
}

class _ProvinceStateDropdownState extends State<ProvinceStateDropdown> {
  var _dropdownValue = '';
  var data = <String>[];

  @override
  void initState() {
    super.initState();
    data = context.read<UserAccount>().isCanadian ? Regions.PROVINCES : Regions.STATES;
    _dropdownValue = data[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: _dropdownValue,
      style: const TextStyle(fontSize: 12),
      onChanged: (newValue) {
        setState(() => _dropdownValue = newValue!);
      },
      items: data.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value, style: const TextStyle(fontSize: 12)));
      }).toList(),
    );
  }
}
