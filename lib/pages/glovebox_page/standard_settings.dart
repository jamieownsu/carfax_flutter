import 'package:carfax/dropdowns/province_dropdown.dart';
import 'package:carfax/state/inherited_state.dart';
import 'package:flutter/material.dart';

class StandardSettings extends StatefulWidget {
  StandardSettings({Key key}) : super(key: key);

  @override
  _StandardSettingsState createState() => _StandardSettingsState();
}

class _StandardSettingsState extends State<StandardSettings> {
  @override
  Widget build(BuildContext context) {
    var vehicle = InheritedVehicleState.of(context).vehicle;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text(
            '${vehicle.year} ${vehicle.make} ${vehicle.model}'.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('VIN', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(vehicle.vin)
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('Plate',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(),
                          labelText: 'License plate'),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: ProvinceDropdown()))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trim', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(vehicle.trim, style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nickname',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('-', style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ZIP/Postal Code',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('90210', style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
        ]),
      )
    ]);
  }
}
