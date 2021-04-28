import 'package:carfax/data/account.dart';
import 'package:carfax/pages/glovebox/dropdowns/province_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StandardSettings extends StatefulWidget {
  StandardSettings({Key key}) : super(key: key);

  @override
  _StandardSettingsState createState() => _StandardSettingsState();
}

class _StandardSettingsState extends State<StandardSettings> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _textController.text = context.watch<UserVehicle>().licensePlate ?? '';
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text(
            '${context.watch<UserVehicle>().year} ${context.watch<UserVehicle>().make} ${context.watch<UserVehicle>().model}'
                .toUpperCase(),
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
                  Text(context.watch<UserVehicle>().vin)
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
                      controller: _textController,
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
                  Text(context.watch<UserVehicle>().vehicleDescription,
                      style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nickname',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(context.watch<UserVehicle>().nickname ?? '-',
                      style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ZIP/Postal Code',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(context.watch<UserVehicle>().postalCode,
                      style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
        ]),
      )
    ]);
  }
}
