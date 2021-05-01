import 'package:carfax/data/account.dart';
import 'package:carfax/pages/glovebox/dropdowns/distance_driven_dropdown.dart';
import 'package:carfax/pages/glovebox/dropdowns/km_miles_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OdometerSettings extends StatefulWidget {
  OdometerSettings({Key key}) : super(key: key);

  @override
  _OdometerSettingsState createState() => _OdometerSettingsState();
}

class _OdometerSettingsState extends State<OdometerSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: const Text('ODOMETER SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Today\'s Odometer Reading ${context.watch<UserVehicle>().metric ? '(KM)' : '(MI)'}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      context.watch<UserVehicle>().metric
                          ? context.watch<UserVehicle>().kilometers.toString()
                          : context.watch<UserVehicle>().miles.toString(),
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
                    child: const Text('Units',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: KmMilesDropdown(),
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
                    child: const Text('Average Annual Distance Driven',
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
