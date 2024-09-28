import 'package:carfax/data/account.dart';
import 'package:carfax/pages/dashboard/widgets/maintenance_item.dart';
import 'package:carfax/pages/dashboard/widgets/recall_item.dart';
import 'package:carfax/pages/glovebox/glovebox_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();
  final _listItems = <Widget>[];
  bool _editingOdometer = false;

  @override
  void initState() {
    super.initState();
    _loadMaintenanceItems();
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
          NumberFormat.decimalPattern()
              .format(context.watch<UserVehicle>().metric ? context.watch<UserVehicle>().kilometers : context.watch<UserVehicle>().miles),
          style: const TextStyle(fontSize: 16, color: Colors.blue)),
    );
  }

  Widget _odoEdit() {
    _textController.text =
        context.watch<UserVehicle>().metric ? context.read<UserVehicle>().kilometers.toString() : context.read<UserVehicle>().miles.toString();
    return SizedBox(
      width: 80,
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.number,
        controller: _textController,
        style: const TextStyle(fontSize: 16),
        maxLines: 1,
        onSubmitted: (value) {
          if (_editingOdometer) {
            context.read<UserVehicle>().metric
                ? context.read<UserVehicle>().kilometers = int.parse(value)
                : context.read<UserVehicle>().miles = int.parse(value);
          }
          setState(() {
            _editingOdometer = !_editingOdometer;
          });
        },
      ),
    );
  }

  Widget _buildOdometerEditor() {
    var metric = context.watch<UserVehicle>().metric;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Text('Today\'s Odometer Reading ${metric ? '(KM)' : '(MI)'}', style: const TextStyle(fontSize: 14)),
      Row(mainAxisSize: MainAxisSize.min, children: [
        _editingOdometer ? _odoEdit() : _odoText(),
        IconButton(
            icon: _editingOdometer ? const Icon(Icons.check) : const Icon(Icons.edit),
            color: _editingOdometer ? Colors.green : Colors.blue,
            onPressed: () {
              if (_editingOdometer) {
                metric
                    ? context.read<UserVehicle>().kilometers = int.parse(_textController.value.text)
                    : context.read<UserVehicle>().miles = int.parse(_textController.value.text);
              }
              setState(() {
                _editingOdometer = !_editingOdometer;
              });
            }),
      ])
    ]);
  }

  Widget _buildOpenGlovebox() {
    var account = context.read<UserAccount>();
    var vehicle = context.read<UserVehicle>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
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
                  providers: [ChangeNotifierProvider.value(value: account), ChangeNotifierProvider.value(value: vehicle)],
                  child: const GloveboxPage(),
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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, mainAxisSize: MainAxisSize.max, children: [
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          height: 100,
          width: 100,
          fit: BoxFit.contain,
          image: context.read<UserVehicle>().imageURL,
        ),
        _buildOdometerEditor(),
        _buildOpenGlovebox(),
      ]),
    );
  }

  Future<void> _loadMaintenanceItems() async {
    final items = [
      const MaintenanceItem(Icon(Icons.local_gas_station), 'Oil Change', 7, 8),
      const MaintenanceItem(Icon(Icons.text_snippet_rounded), 'Registration', 11, 24),
      const MaintenanceItem(Icon(Icons.miscellaneous_services_sharp), 'Tread Life', 2, 4),
      const RecallItem('No Open Recalls Reported')
    ];
    for (var item in items) {
      await Future.delayed(const Duration(milliseconds: 1));
      _listItems.add(item);
      _listKey.currentState?.insertItem(_listItems.length - 1);
    }
  }

  Widget _buildServiceList() {
    return Flexible(
      child: AnimatedList(
          key: _listKey,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10),
          initialItemCount: _listItems.length,
          itemBuilder: (context, index, animation) {
            return SizeTransition(axis: Axis.vertical, sizeFactor: animation, child: _listItems[index]);
          }),
    );
  }

  Widget _buildHelpLink() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Something Wrong?'),
        Text(' Get Help', style: TextStyle(color: Colors.blue)),
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
