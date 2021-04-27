import 'package:carfax/json/account_json.dart';
import 'package:carfax/pages/vehicle_page.dart';
import 'package:carfax/state/inherited_state.dart';
import 'package:carfax/utilities/network_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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

  void _buildVehicleList(Account account) {
    account.vehicles.forEach((item) {
      var card = Card(
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://smartcdn.prod.postmedia.digital/driving/images?url=http://smartcdn.prod.postmedia.digital/driving/wp-content/uploads/2014/10/s3-9.jpg&w=960&h=480',
          ),
          title: Text('${item.year} ${item.make} ${item.model}'),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => InheritedVehicleState(
                  vehicle: item,
                  child: VehiclePage(),
                ),
              ),
            );
          },
        ),
      );
      setState(() => listItems.add(card));
    });
    var addVehicle = Card(
      child: ListTile(
        title: Center(
          child: Text('Add a Car', style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
    setState(() => listItems.add(addVehicle));
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
