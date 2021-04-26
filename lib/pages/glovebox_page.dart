import 'package:flutter/material.dart';
import 'glovebox_page/fuel_efficiency_settings.dart';
import 'glovebox_page/maintenance_settings.dart';
import 'glovebox_page/notes.dart';
import 'glovebox_page/odometer_settings.dart';
import 'glovebox_page/standard_settings.dart';

class Glovebox extends StatefulWidget {
  Glovebox({Key key}) : super(key: key);

  @override
  _GloveboxState createState() => _GloveboxState();
}

class _GloveboxState extends State<Glovebox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Glovebox'), centerTitle: true, actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Done', style: TextStyle(fontSize: 16)))
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          StandardSettings(),
          OdometerSettings(),
          FuelSettings(),
          MaintenanceSettings(),
          Notes()
        ]),
      ),
    );
  }
}
