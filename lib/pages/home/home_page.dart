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

  @override
  void initState() {
    super.initState();
    GetUtility.getAccount(context.read<UserAccount>()).then((value) {
      setState(() {
        _loading = false;
      });
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

  Widget _buildVehicleList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: context.watch<UserAccount>().vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = context.watch<UserAccount>().vehicles[index];
          return Dismissible(
              key: Key(vehicle.vin),
              onDismissed: (direction) {
                setState(() {
                  context.read<UserAccount>().vehicles.removeAt(index);
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
              child: _buildCard(context.watch<UserAccount>(), vehicle));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Garage'), centerTitle: true),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Flexible(child: _buildVehicleList()),
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
                            child: AddCarPage(),
                          ),
                        ));
                  },
                  icon: const Icon(Icons.directions_car_sharp),
                  label:
                      const Text('Add a Car', style: TextStyle(fontSize: 16)),
                ),
              ),
            ]),
    );
  }
}