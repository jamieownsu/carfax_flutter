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
  Widget _buildCard(bool metric, ServiceRecord item) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    item.shopName,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                      '${item.date}  -  ${metric ? item.kmAtService + ' km' : item.miAtService + ' mi'}',
                      style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text('Services Completed',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(item.servicePerformed, style: TextStyle(fontSize: 16))
                ]),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Center(child: const Icon(Icons.arrow_right)))
          ]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              label: Text('Upload Receipt'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.star_border),
              label: Text('Rate Service'),
            )
          ]),
        ]),
      ),
    );
  }

  Future<List<Card>> _buildList(bool metric) async {
    var list = <Card>[];
    var serviceRecords = await GetUtility.getShopRecords();
    serviceRecords.forEach((item) {
      list.add(_buildCard(metric, item));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var metric = context.watch<UserVehicle>().metric;
    return FutureBuilder<List<Card>>(
        future: _buildList(metric),
        builder: (BuildContext context, AsyncSnapshot<List<Card>> snapshot) {
          return Column(children: [
            Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth()
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(children: <Widget>[
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Add Record',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Invite Shop',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ]),
                ]),
            Expanded(
              child: snapshot.hasData
                  ? ListView(
                      physics: BouncingScrollPhysics(), children: snapshot.data)
                  : const Center(child: CircularProgressIndicator()),
            ),
          ]);
        });
  }
}
