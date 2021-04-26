import 'package:flutter/material.dart';

import '../json/vehicles_json.dart';

class InheritedVehicleState extends InheritedWidget {
  const InheritedVehicleState({
    Key key,
    @required this.vehicle,
    @required Widget child,
  }) : super(key: key, child: child);

  final Listings vehicle;

  static InheritedVehicleState of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<InheritedVehicleState>();
    assert(result != null, 'No InheritedVehicleState found in context');
    return result;
  }

  @override
  bool updateShouldNotify(InheritedVehicleState old) => vehicle != old.vehicle;
}
