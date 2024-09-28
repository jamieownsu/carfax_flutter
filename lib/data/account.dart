import 'package:carfax/json/vehicle_details_json.dart';
import 'package:flutter/cupertino.dart';

class UserAccount with ChangeNotifier {
  String email = "";
  bool isCanadian = true;
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
  String make = "",
      model = "",
      year = "",
      imageURL =
          'https://preview.redd.it/2015-s3-vs-2017-s3-hear-me-out-v0-sctewyx524kb1.jpg?width=900&format=pjpg&auto=webp&s=9bd0630e4f4f3c7a31a01f9f4455a09bfe789bba',
      _licensePlate = "",
      vin = "",
      vehicleDescription = "",
      bodyTypeDescription = "",
      _nickname = "",
      postalCode = "";
  bool _metric = true;
  int kilometers = 0, miles = 0;
  List<ServiceRecord> serviceRecords = [];
  List<Event> events = [];

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
  String shopName = "", date = "", servicePerformed = "", kmAtService = "", miAtService = "";
}
