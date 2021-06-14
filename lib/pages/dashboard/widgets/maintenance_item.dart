import 'package:flutter/material.dart';

class MaintenanceItem extends StatefulWidget {
  MaintenanceItem(this.icon, this.title, this.durationLeft, this.durationTotal);

  final Icon icon;
  final String title;
  final int durationLeft, durationTotal;

  @override
  _MaintenanceItemState createState() => _MaintenanceItemState();
}

class _MaintenanceItemState extends State<MaintenanceItem>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    _controller.animateTo(1 - (widget.durationLeft / widget.durationTotal));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var durationText = widget.title == 'Tread Life' ? 'Year' : 'Month';
    durationText += widget.durationLeft > 1 ? 's' : '';
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(flex: 1, child: widget.icon),
          Expanded(
            flex: 5,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(widget.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: LinearProgressIndicator(value: _controller.value),
              )
            ]),
          ),
          Expanded(
            flex: 3,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(widget.durationLeft.toString()),
              Text('$durationText Left', style: const TextStyle(fontSize: 12))
            ]),
          ),
          Expanded(flex: 0, child: const Icon(Icons.arrow_right))
        ]),
      ),
      const Divider()
    ]);
  }
}
