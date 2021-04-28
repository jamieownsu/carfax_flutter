import 'package:flutter/cupertino.dart';

class UserAccount with ChangeNotifier {
  String email;
  List<UserVehicle> vehicles = [];
}

class UserVehicle with ChangeNotifier {
  String make,
      model,
      year,
      licensePlate,
      vin,
      vehicleDescription,
      nickname,
      postalCode;
  bool _metric;
  int kilometers, miles;
  List<ServiceRecord> serviceRecords;

  bool get metric => _metric;

  set metric(val) {
    _metric = val;
    notifyListeners();
  }
}

class ServiceRecord {
  String shopName, date, servicePerformed, kmAtService, miAtService;
}
