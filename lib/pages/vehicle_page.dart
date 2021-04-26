import 'package:carfax/pages/glovebox_page.dart';
import 'package:carfax/pages/vehicle_page/maintenance_item.dart';
import 'package:carfax/pages/vehicle_page/recall_item.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../state/inherited_state.dart';

class VehiclePage extends StatefulWidget {
  VehiclePage({Key key}) : super(key: key);

  @override
  _VehiclePageState createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  Widget _buildVehicleHeader(vehicle) {
    return Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          height: 100,
          width: 100,
          fit: BoxFit.scaleDown,
          image: vehicle.images.firstPhoto.small.toString(),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('Today\'s Odometer Reading'),
          Row(mainAxisSize: MainAxisSize.min, children: [
            Text(vehicle.mileage.toString(),
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
                    builder: (context) => InheritedVehicleState(
                      vehicle: vehicle,
                      child: Glovebox(),
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

  Widget _buildHelpLink() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Something Wrong'),
        Text(' Get Help', style: TextStyle(color: Colors.blue)),
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

  @override
  Widget build(BuildContext context) {
    var vehicle = InheritedVehicleState.of(context).vehicle;
    return Scaffold(
      appBar: AppBar(
        title: Text('${vehicle.year} ${vehicle.make} ${vehicle.model}'),
        centerTitle: true,
      ),
      body:
          Column(children: [_buildVehicleHeader(vehicle), _buildServiceList()]),
    );
  }
}
