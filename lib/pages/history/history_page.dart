import 'package:carfax/data/account.dart';
import 'package:carfax/utilities/get_utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  Widget _buildHeaderButtons() {
    return Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{0: FlexColumnWidth()},
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                height: 40,
                alignment: Alignment.center,
                child: const Text('Add Record',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                    textAlign: TextAlign.center),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                height: 40,
                alignment: Alignment.center,
                child: const Text('Invite Shop',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                    textAlign: TextAlign.center),
              ),
            ),
          ]),
        ]);
  }

  Widget _buildCard(ServiceRecord item) {
    var metric = context.read<UserVehicle>().metric;
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(item.shopName,
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SizedBox(height: 20),
                  Text(
                      '${item.date}  -  ${metric ? item.kmAtService + ' km' : item.miAtService + ' mi'}',
                      style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  const Text('Services Completed',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(item.servicePerformed, style: TextStyle(fontSize: 16))
                ]),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: const Center(child: Icon(Icons.arrow_right)))
          ]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text('Upload Receipt'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
              label: const Text('Rate Service'),
            )
          ]),
        ]),
      ),
    );
  }

  Widget _buildServiceRecordList() {
    return Expanded(
        child: FutureBuilder(
      future: GetUtility.getShopRecords(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return _buildCard(snapshot.data[index]);
                  });
            }
        }
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildHeaderButtons(), _buildServiceRecordList()]);
  }
}
