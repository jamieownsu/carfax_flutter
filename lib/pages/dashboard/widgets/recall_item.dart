import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecallItem extends StatelessWidget {
  const RecallItem(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Expanded(flex: 1, child: Icon(Icons.check)),
            Expanded(
              flex: 8,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text('As of ${DateFormat('dd/MM/yyyy', 'en_US').format(DateTime.now())}'),
                )
              ]),
            )
          ]),
        ),
        const Divider()
      ],
    );
  }
}
