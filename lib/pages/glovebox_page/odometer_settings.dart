import 'package:carfax/dropdowns/distance_driven_dropdown.dart';
import 'package:carfax/dropdowns/km_miles_dropdown.dart';
import 'package:flutter/material.dart';

import '../../state/inherited_state.dart';

class OdometerSettings extends StatefulWidget {
  OdometerSettings({Key key}) : super(key: key);

  @override
  _OdometerSettingsState createState() => _OdometerSettingsState();
}

class _OdometerSettingsState extends State<OdometerSettings> {
  var kmMiles = '(KM)';

  void _kmMilesCallback(val) {
    setState(() {
      kmMiles = val == 'Miles' ? '(MI)' : '(KM)';
    });
  }

  @override
  Widget build(BuildContext context) {
    var vehicle = InheritedVehicleState.of(context).vehicle;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text('ODOMETER SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today\'s Odometer Reading $kmMiles',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(vehicle.mileage.toString(),
                      style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Units',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: KmMilesDropdown(callback: _kmMilesCallback),
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Average Annual Distance Driven',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: DistanceDrivenDropdown(),
                  )
                ]),
          ),
        ]),
      )
    ]);
  }
}
