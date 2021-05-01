import 'package:carfax/data/account.dart';
import 'package:carfax/pages/home/widgets/add_car.dart';
import 'package:carfax/pages/vehicle_detail_page.dart';
import 'package:carfax/utilities/get_utility.dart';
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
  ListView _list;
  UserAccount _userAccount;

  @override
  void initState() {
    super.initState();
    GetUtility.getAccount().then((value) {
      if (value != null) {
        _buildVehicleList(value);
        setState(() {
          _userAccount = value;
          _loading = false;
        });
      }
    });
  }

  Widget _buildCard(UserAccount account, UserVehicle vehicle) {
    return Card(
      child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://smartcdn.prod.postmedia.digital/driving/images?url=http://smartcdn.prod.postmedia.digital/driving/wp-content/uploads/2014/10/s3-9.jpg&w=960&h=480',
          ),
          title: Text('${vehicle.year} ${vehicle.make} ${vehicle.model}'),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => MultiProvider(providers: [
                    ChangeNotifierProvider.value(value: account),
                    ChangeNotifierProvider.value(value: vehicle)
                  ], child: VehicleDetailPage(vin: vehicle.vin)),
                ));
          }),
    );
  }

  void _buildVehicleList(UserAccount account) {
    var list = ListView.builder(
        shrinkWrap: true,
        itemCount: account.vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = account.vehicles[index];
          return Dismissible(
              key: Key(vehicle.vin),
              onDismissed: (direction) {
                setState(() {
                  account.vehicles.removeAt(index);
                });
              },
              confirmDismiss: (DismissDirection direction) async {
                return await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: const Text('Confirm'),
                        content: const Text(
                            'Are you sure you wish to remove this vehicle?'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text('CONFIRM')),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('CANCEL')),
                        ]);
                  },
                );
              },
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.only(right: 20.0),
                color: Colors.red,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: Colors.white),
                    label: Text('Delete',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ),
              ),
              child: _buildCard(account, vehicle));
        });
    setState(() => _list = list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Garage'), centerTitle: true),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Flexible(child: _list),
              Card(
                child: TextButton.icon(
                    onPressed: () {
                      var account = context.read<UserAccount>();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => ChangeNotifierProvider.value(
                            value: account,
                            child: AddCarPage(userAccount: _userAccount),
                          ),
                        ),
                      ).then((value) {
                        // _buildVehicleList(context.read<UserAccount>());
                        _buildVehicleList(_userAccount);
                      });
                    },
                    icon: const Icon(Icons.directions_car_sharp),
                    label: const Text('Add a Car',
                        style: TextStyle(fontSize: 16))),
              ),
            ]),
    );
  }
}
