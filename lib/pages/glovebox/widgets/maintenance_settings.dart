import 'package:carfax/pages/glovebox/dropdowns/registration_dropdown.dart';
import 'package:flutter/material.dart';

class MaintenanceSettings extends StatefulWidget {
  MaintenanceSettings({Key key}) : super(key: key);

  @override
  _MaintenanceSettingsState createState() => _MaintenanceSettingsState();
}

class _MaintenanceSettingsState extends State<MaintenanceSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: const Text('MAINTENANCE SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Oil Change',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('8000 kilometers, 12 months',
                            style: TextStyle(fontSize: 12))
                      ]),
                  const Icon(Icons.arrow_right)
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: const Text('Registration',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: RegistrationDropdown(),
                  )
                ]),
          ),
        ]),
      )
    ]);
  }
}
