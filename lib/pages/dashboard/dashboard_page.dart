import 'package:carfax/data/account.dart';
import 'package:carfax/pages/glovebox/glovebox_page.dart';
import 'package:carfax/pages/dashboard/widgets/maintenance_item.dart';
import 'package:carfax/pages/dashboard/widgets/recall_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget _buildVehicleHeader() {
    var vehicle = context.watch<UserVehicle>();
    var kmMiles = 'mi';
    if (context.watch<UserVehicle>().metric) {
      kmMiles = 'km';
    }
    return Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          height: 100,
          width: 100,
          fit: BoxFit.scaleDown,
          image:
              'https://smartcdn.prod.postmedia.digital/driving/images?url=http://smartcdn.prod.postmedia.digital/driving/wp-content/uploads/2014/10/s3-9.jpg&w=960&h=480',
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('Today\'s Odometer Reading'),
          Row(mainAxisSize: MainAxisSize.min, children: [
            Text(
                '${NumberFormat.decimalPattern().format(context.watch<UserVehicle>().metric ? context.watch<UserVehicle>().kilometers : context.watch<UserVehicle>().miles).toString()} $kmMiles',
                style: TextStyle(fontSize: 16, color: Colors.blue)),
            IconButton(
              icon: const Icon(Icons.edit_outlined),
              color: Colors.blue,
              onPressed: () {},
            )
          ])
        ]),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            IconButton(
              icon: const Icon(Icons.folder_open_sharp),
              tooltip: 'Open Glovebox',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => ChangeNotifierProvider.value(
                      value: vehicle,
                      child: GloveboxPage(),
                    ),
                  ),
                );
              },
            ),
            Text('Glovebox', style: TextStyle(fontSize: 12))
          ]),
        ),
      ]),
    );
  }

  Widget _buildServiceList() {
    return Expanded(
      child: ListView(children: [
        MaintenanceItem(
            const Icon(Icons.local_gas_station), 'Oil Change', 7, 8),
        MaintenanceItem(
            const Icon(Icons.text_snippet_rounded), 'Registration', 11, 24),
        MaintenanceItem(
            const Icon(Icons.directions_car_sharp), 'Tread Life', 2, 4),
        RecallItem('No Open Recalls Reported'),
        _buildHelpLink(),
      ]),
    );
  }

  Widget _buildHelpLink() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Something Wrong'),
        Text(' Get Help', style: TextStyle(color: Colors.blue)),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildVehicleHeader(), _buildServiceList()]);
  }
}
