import 'dart:convert';

import 'package:carfax/data/account.dart';
import 'package:carfax/json/account_json.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

class PostUtility {
  static Future<void> addVehicle(UserAccount userAccount) async {
    try {
      var data = await rootBundle.loadString('assets/data/account.json');
      var accountJson = await compute(parseAccountJson, data);
      var userVehicle = UserVehicle();
      userVehicle.make = accountJson.vehicles[0].make;
      userVehicle.model = accountJson.vehicles[0].model;
      userVehicle.year = accountJson.vehicles[0].year;
      userVehicle.licensePlate = accountJson.vehicles[0].licensePlate;
      userVehicle.vin = accountJson.vehicles[0].vin;
      userVehicle.vehicleDescription = accountJson.vehicles[0].vehicleDescription;
      userVehicle.nickname = accountJson.vehicles[0].nickname;
      userVehicle.postalCode = accountJson.vehicles[0].postalCode;
      userVehicle.metric = accountJson.vehicles[0].metric;
      userVehicle.kilometers = accountJson.vehicles[0].lastOdoKm;
      userVehicle.miles = accountJson.vehicles[0].lastOdoMileage;
      userAccount.add(userVehicle);
    } catch (e, s) {
      print('$e $s');
      return;
    }
  }

  static AccountData parseAccountJson(String data) {
    return AccountData.fromJson(json.decode(data));
  }
}
