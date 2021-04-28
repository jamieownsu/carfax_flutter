import 'package:carfax/data/account.dart';
import 'package:carfax/pages/vehicle_detail_page.dart';
import 'package:carfax/utilities/network_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = true;
  final List<Card> _list = [];

  @override
  void initState() {
    super.initState();
    NetworkUtility.getAccount().then((value) {
      if (value != null) {
        _buildVehicleList(value);
        setState(() => _loading = false);
      }
    });
  }

  void _buildVehicleList(UserAccount account) {
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
                  builder: (context) => ChangeNotifierProvider.value(
                    value: item,
                    child: VehicleDetailPage(vin: item.vin),
                  ),
                ),
              );
            }),
      );
      setState(() => _list.add(card));
    });
    var addVehicle = Card(
      child: ListTile(
        title: Center(
          child: Text('Add a Car', style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
    setState(() => _list.add(addVehicle));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Garage'), centerTitle: true, actions: [
        TextButton(onPressed: () {}, child: Text('Edit')),
      ]),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(children: _list),
    );
  }
}
