import 'package:flutter/material.dart';

import 'widgets/fuel_efficiency_settings.dart';
import 'widgets/maintenance_settings.dart';
import 'widgets/notes.dart';
import 'widgets/odometer_settings.dart';
import 'widgets/standard_settings.dart';

class GloveboxPage extends StatelessWidget {
  const GloveboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Glovebox'), centerTitle: true, actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Done', style: TextStyle(fontSize: 16)),
        )
      ]),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(children: [StandardSettings(), OdometerSettings(), FuelSettings(), MaintenanceSettings(), Notes()]),
      ),
    );
  }
}
