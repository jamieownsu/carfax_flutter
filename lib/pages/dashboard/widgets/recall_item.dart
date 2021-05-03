import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecallItem extends StatelessWidget {
  RecallItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(flex: 1, child: Icon(Icons.check)),
            Expanded(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                          'As of ${DateFormat('dd/MM/yyyy', 'en_US').format(DateTime.now())}'),
                    )
                  ]),
            )
          ]),
        ),
        Divider()
      ],
    );
  }
}
