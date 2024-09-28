import 'package:carfax/data/account.dart';
import 'package:carfax/pages/glovebox/dropdowns/distance_driven_dropdown.dart';
import 'package:carfax/pages/glovebox/dropdowns/km_miles_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OdometerSettings extends StatefulWidget {
  const OdometerSettings({super.key});

  @override
  _OdometerSettingsState createState() => _OdometerSettingsState();
}

class _OdometerSettingsState extends State<OdometerSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text('ODOMETER SETTINGS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Today\'s Odometer Reading ${context.watch<UserVehicle>().metric ? '(KM)' : '(MI)'}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  NumberFormat.decimalPattern()
                      .format(context.watch<UserVehicle>().metric ? context.watch<UserVehicle>().kilometers : context.watch<UserVehicle>().miles),
                  style: const TextStyle(color: Colors.blueAccent))
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                flex: 2,
                child: Text('Units', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Expanded(
                flex: 1,
                child: KmMilesDropdown(),
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                flex: 2,
                child: Text('Average Annual Distance Driven', style: TextStyle(fontWeight: FontWeight.bold)),
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
