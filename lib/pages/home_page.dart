import 'package:carfax/json/vehicles_json.dart';
import 'package:carfax/pages/vehicle_page.dart';
import 'package:carfax/utilities/network_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../state/inherited_state.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = true;
  List<Card> listItems = [];

  @override
  void initState() {
    super.initState();
    NetworkUtility.getVehicles().then((value) {
      if (value != null) {
        setState(() {
          _loading = false;
          _buildVehicleList(value);
        });
      }
    });
  }

  void _buildVehicleList(Listings listings) {
    var card = Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: listings.images.firstPhoto.small.toString(),
        ),
        title: Text('${listings.year} ${listings.make} ${listings.model}'),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => InheritedVehicleState(
                vehicle: listings,
                child: VehiclePage(),
              ),
            ),
          );
        },
      ),
    );
    var addVehicle = Card(
      child: ListTile(
        title: Center(
          child: Text('Add a Car', style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
    setState(() {
      listItems.add(card);
      listItems.add(addVehicle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Garage'), centerTitle: true, actions: [
        TextButton(onPressed: () {}, child: Text('Edit')),
      ]),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : ListView(children: listItems),
    );
  }
}
