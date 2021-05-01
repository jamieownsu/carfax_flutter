import 'package:flutter/material.dart';

class FuelSettings extends StatefulWidget {
  FuelSettings({Key key}) : super(key: key);

  @override
  _FuelSettingsState createState() => _FuelSettingsState();
}

class _FuelSettingsState extends State<FuelSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: const Text('FUEL EFFICIENCY SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 5,
                      child: const Text('Fuel efficiency',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(
                      flex: 2,
                      child: const Text('Start Tracking',
                          style: TextStyle(color: Colors.blueAccent))),
                  Expanded(flex: 0, child: const Icon(Icons.arrow_right))
                ]),
          ),
        ]),
      )
    ]);
  }
}
