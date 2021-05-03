import 'package:carfax/json/vehicle_details_json.dart';
import 'package:flutter/cupertino.dart';

class UserAccount with ChangeNotifier {
  String email;
  bool isCanadian;
  List<UserVehicle> _vehicles = [];

  List<UserVehicle> get vehicles => _vehicles;
  set vehicles(val) {
    _vehicles = val;
    notifyListeners();
  }

  void add(UserVehicle item) {
    _vehicles.add(item);
    notifyListeners();
  }
}

class UserVehicle with ChangeNotifier {
  String make,
      model,
      year,
      _licensePlate,
      vin,
      vehicleDescription,
      bodyTypeDescription,
      _nickname,
      postalCode;
  bool _metric;
  int kilometers, miles;
  List<ServiceRecord> serviceRecords;
  List<Event> events;

  String get licensePlate => _licensePlate;
  set licensePlate(val) {
    _licensePlate = val;
    notifyListeners();
  }

  String get nickname => _nickname;
  set nickname(val) {
    _nickname = val;
    notifyListeners();
  }

  bool get metric => _metric;
  set metric(val) {
    _metric = val;
    notifyListeners();
  }
}

class ServiceRecord {
  String shopName, date, servicePerformed, kmAtService, miAtService;
}
