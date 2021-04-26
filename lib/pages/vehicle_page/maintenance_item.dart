import 'package:flutter/material.dart';

class MaintenanceItem extends StatelessWidget {
  MaintenanceItem(this.icon, this.title, this.durationLeft, this.durationTotal);

  final Icon icon;
  final String title;
  final int durationLeft, durationTotal;

  @override
  Widget build(BuildContext context) {
    var durationText = title == 'Tread Life' ? 'Year' : 'Month';
    durationText += durationLeft > 1 ? 's' : '';
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(flex: 1, child: icon),
          Expanded(
            flex: 5,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  value: 1 - (durationLeft / durationTotal),
                ),
              )
            ]),
          ),
          Expanded(
            flex: 3,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(durationLeft.toString()),
              Text(
                '$durationText Left',
                style: TextStyle(fontSize: 12),
              )
            ]),
          ),
          Expanded(flex: 0, child: const Icon(Icons.arrow_right))
        ]),
      ),
      Divider()
    ]);
  }
}
