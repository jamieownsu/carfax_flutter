import 'package:carfax/constants/prov_state.dart';
import 'package:carfax/data/account.dart';
import 'package:carfax/utilities/post_utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCarPage extends StatefulWidget {
  const AddCarPage({super.key});

  @override
  _AddCarPageState createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  final _vinFormKey = GlobalKey<FormState>(), _plateProvStateFormKey = GlobalKey<FormState>();
  final TextEditingController _vinTextController = TextEditingController(), _plateTextController = TextEditingController();
  var _isVinEnabled = false, _isPlateEnabled = false, _isProvStateEnabled = false;

  @override
  void dispose() {
    _vinTextController.dispose();
    _plateTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildVinSearch() {
      return Form(
        key: _vinFormKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text('Search by VIN', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: _vinTextController,
              maxLines: 1,
              maxLength: 17,
              onChanged: (String value) {
                setState(() => _isVinEnabled = value.length == 17 ? true : false);
              },
              textCapitalization: TextCapitalization.characters,
              decoration:
                  const InputDecoration(contentPadding: EdgeInsets.only(left: 10), border: OutlineInputBorder(), hintText: 'Vehicle Identification Number'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a VIN';
                }
                if (value.length < 17) {
                  return 'Please enter a valid VIN';
                }
                return null;
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Where can I find the VIN?', style: TextStyle(color: Colors.blueAccent)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: _isVinEnabled
                    ? () {
                        if (_vinFormKey.currentState!.validate()) {
                          print(_vinTextController.text);
                          PostUtility.addVehicle(context.read<UserAccount>());
                          Navigator.pop(context);
                        }
                      }
                    : null,
                child: const Text('Search VIN')),
          ),
        ]),
      );
    }

    Widget buildSeparator() {
      return const Column(children: [
        SizedBox(height: 25),
        Center(
          child: Text('OR', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 25)
      ]);
    }

    Widget buildProvState() {
      var stateProv = '';
      var list = Regions.PROVINCES + Regions.STATES;
      return Form(
        key: _plateProvStateFormKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text('Search by License Plate', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              controller: _plateTextController,
              maxLines: 1,
              onChanged: (String value) {
                setState(() => _isPlateEnabled = value.length > 2 ? true : false);
              },
              textCapitalization: TextCapitalization.characters,
              decoration: const InputDecoration(contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0), border: OutlineInputBorder(), hintText: 'License Plate'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a license plate';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Autocomplete<String>(fieldViewBuilder:
                (BuildContext context, TextEditingController fieldTextEditingController, FocusNode fieldFocusNode, VoidCallback onFieldSubmitted) {
              return TextFormField(
                controller: fieldTextEditingController,
                focusNode: fieldFocusNode,
                decoration: const InputDecoration(contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0), border: OutlineInputBorder(), hintText: 'State/Province'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a state/province';
                  }
                  stateProv = value;
                  return null;
                },
              );
            }, optionsBuilder: (TextEditingValue textEditingValue) {
              setState(() => _isProvStateEnabled = list.contains(textEditingValue.text) ? true : false);
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return list.where((String option) {
                return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
              });
            }),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  onPressed: _isPlateEnabled && _isProvStateEnabled
                      ? () {
                          if (_plateProvStateFormKey.currentState!.validate()) {
                            print('${_plateTextController.text} $stateProv');
                            PostUtility.addVehicle(context.read<UserAccount>());
                          }
                        }
                      : null,
                  child: const Text('Search Plate')))
        ]),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Adding Car'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [buildVinSearch(), buildSeparator(), buildProvState()],
          ),
        ),
      ),
    );
  }
}
