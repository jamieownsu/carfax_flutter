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
  bool _editingOdometer = false;
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

  Widget _odoText() {
    return SizedBox(
      width: 80,
      child: Text(
          '${NumberFormat.decimalPattern().format(context.watch<UserVehicle>().metric ? context.watch<UserVehicle>().kilometers : context.watch<UserVehicle>().miles)}',
          style: TextStyle(fontSize: 16, color: Colors.blue)),
    );
  }

  Widget _odoEdit() {
    _textController.text = context.watch<UserVehicle>().metric
        ? context.watch<UserVehicle>().kilometers.toString()
        : context.watch<UserVehicle>().miles.toString() ?? '';
    return SizedBox(
      width: 80,
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.number,
        controller: _textController,
        style: TextStyle(fontSize: 16),
        maxLines: 1,
        onSubmitted: (value) {
          if (_editingOdometer) {
            context.watch<UserVehicle>().metric
                ? context.read<UserVehicle>().kilometers = int.tryParse(value)
                : context.read<UserVehicle>().miles = int.tryParse(value);
          }
          setState(() {
            _editingOdometer = !_editingOdometer;
          });
        },
      ),
    );
  }

  Widget _buildOdometerEditor() {
    var kmMiles = context.watch<UserVehicle>().metric ? '(KM)' : '(MI)';
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Today\'s Odometer Reading $kmMiles',
              style: TextStyle(fontSize: 14)),
          Row(mainAxisSize: MainAxisSize.min, children: [
            _editingOdometer ? _odoEdit() : _odoText(),
            IconButton(
                icon: _editingOdometer
                    ? const Icon(Icons.check)
                    : const Icon(Icons.edit),
                color: _editingOdometer ? Colors.green : Colors.blue,
                onPressed: () {
                  if (_editingOdometer) {
                    context.read<UserVehicle>().kilometers =
                        int.tryParse(_textController.value.text);
                  }
                  setState(() {
                    _editingOdometer = !_editingOdometer;
                  });
                }),
          ])
        ]);
  }

  Widget _buildOpenGlovebox() {
    var account = context.watch<UserAccount>();
    var vehicle = context.watch<UserVehicle>();
    return Padding(
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
                builder: (context) => MultiProvider(
                  providers: [
                    ChangeNotifierProvider.value(value: account),
                    ChangeNotifierProvider.value(value: vehicle)
                  ],
                  child: GloveboxPage(),
                ),
              ),
            );
          },
        ),
        const Text('Glovebox', style: TextStyle(fontSize: 12))
      ]),
    );
  }

  Widget _buildVehicleHeader() {
    return Card(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
              image:
                  'https://smartcdn.prod.postmedia.digital/driving/images?url=http://smartcdn.prod.postmedia.digital/driving/wp-content/uploads/2014/10/s3-9.jpg&w=960&h=480',
            ),
            _buildOdometerEditor(),
            _buildOpenGlovebox(),
          ]),
    );
  }

  Widget _buildServiceList() {
    return Flexible(
      child: ListView(shrinkWrap: true, children: [
        MaintenanceItem(
            const Icon(Icons.local_gas_station), 'Oil Change', 7, 8),
        MaintenanceItem(
            const Icon(Icons.text_snippet_rounded), 'Registration', 11, 24),
        MaintenanceItem(
            const Icon(Icons.miscellaneous_services_sharp), 'Tread Life', 2, 4),
        RecallItem('No Open Recalls Reported'),
      ]),
    );
  }

  Widget _buildHelpLink() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Something Wrong?'),
        const Text(' Get Help', style: TextStyle(color: Colors.blue)),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildVehicleHeader(),
      _buildServiceList(),
      _buildHelpLink(),
    ]);
  }
}
