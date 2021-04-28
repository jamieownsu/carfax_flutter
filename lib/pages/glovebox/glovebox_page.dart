import 'package:flutter/material.dart';
import 'widgets/fuel_efficiency_settings.dart';
import 'widgets/maintenance_settings.dart';
import 'widgets/notes.dart';
import 'widgets/odometer_settings.dart';
import 'widgets/standard_settings.dart';

class GloveboxPage extends StatefulWidget {
  GloveboxPage({Key key}) : super(key: key);

  @override
  _GloveboxPageState createState() => _GloveboxPageState();
}

class _GloveboxPageState extends State<GloveboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Glovebox'), centerTitle: true, actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Done', style: TextStyle(fontSize: 16)),
        )
      ]),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
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
