import 'package:carfax/data/account.dart';
import 'package:carfax/pages/glovebox/dropdowns/prov_state_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StandardSettings extends StatefulWidget {
  StandardSettings({Key key}) : super(key: key);

  @override
  _StandardSettingsState createState() => _StandardSettingsState();
}

class _StandardSettingsState extends State<StandardSettings> {
  final TextEditingController _licenseTextController = TextEditingController(),
      _nicknameTextController = TextEditingController(),
      _postalTextController = TextEditingController();
  bool _editLicense = false, _editNickname = false, _editPostal = false;

  @override
  void dispose() {
    _licenseTextController.dispose();
    _nicknameTextController.dispose();
    _postalTextController.dispose();
    super.dispose();
  }

  Widget _buildLicense() {
    _licenseTextController.text = context.watch<UserVehicle>().licensePlate;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          flex: 1,
          child: const Text('Plate',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 2,
          child: context.watch<UserVehicle>().licensePlate.isEmpty ||
                  _editLicense
              ? TextField(
                  controller: _licenseTextController,
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(),
                      labelText: 'License plate'),
                  onSubmitted: (value) {
                    context.read<UserVehicle>().licensePlate =
                        value.toUpperCase();
                    setState(() {
                      _editLicense = false;
                    });
                  },
                )
              : InkWell(
                  onTap: () {
                    setState(() {
                      _editLicense = true;
                    });
                  },
                  child: Text(context.watch<UserVehicle>().licensePlate,
                      style: TextStyle(color: Colors.blueAccent)),
                ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ProvinceStateDropdown()))
      ]),
    );
  }

  Widget _buildNickname() {
    _nicknameTextController.text = context.watch<UserVehicle>().nickname;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text('Nickname', style: TextStyle(fontWeight: FontWeight.bold)),
        Expanded(flex: 2, child: SizedBox()),
        context.watch<UserVehicle>().nickname.isEmpty || _editNickname
            ? Expanded(
                flex: 2,
                child: TextField(
                  controller: _nicknameTextController,
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(),
                      labelText: 'Nickname'),
                  onSubmitted: (value) {
                    context.read<UserVehicle>().nickname = value;
                    setState(() {
                      _editNickname = false;
                    });
                  },
                ),
              )
            : Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _editNickname = true;
                    });
                  },
                  child: Text(context.watch<UserVehicle>().nickname,
                      style: TextStyle(color: Colors.blueAccent),
                      textAlign: TextAlign.right),
                ),
              )
      ]),
    );
  }

  Widget _buildPostalCode() {
    _postalTextController.text = context.watch<UserVehicle>().postalCode;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text('ZIP/Postal Code',
            style: TextStyle(fontWeight: FontWeight.bold)),
        Expanded(flex: 2, child: SizedBox()),
        context.watch<UserVehicle>().postalCode.isEmpty || _editPostal
            ? Expanded(
                flex: 2,
                child: TextField(
                  controller: _postalTextController,
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(),
                      labelText: 'ZIP/Postal Code'),
                  onSubmitted: (value) {
                    context.read<UserVehicle>().postalCode = value;
                    setState(() {
                      _editPostal = false;
                    });
                  },
                ),
              )
            : Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _editPostal = true;
                    });
                  },
                  child: Text(context.watch<UserVehicle>().postalCode,
                      style: TextStyle(color: Colors.blueAccent),
                      textAlign: TextAlign.right),
                ),
              )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text(
            '${context.read<UserVehicle>().year} ${context.read<UserVehicle>().make} ${context.read<UserVehicle>().model}'
                .toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('VIN',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(context.read<UserVehicle>().vin)
                ]),
          ),
          _buildLicense(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Trim',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(context.watch<UserVehicle>().bodyTypeDescription,
                      style: TextStyle(color: Colors.blueAccent))
                ]),
          ),
          _buildNickname(),
          _buildPostalCode(),
        ]),
      )
    ]);
  }
}
