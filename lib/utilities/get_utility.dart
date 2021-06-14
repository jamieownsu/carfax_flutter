import 'dart:convert';
import 'package:carfax/data/account.dart';
import 'package:carfax/json/account_json.dart';
import 'package:carfax/json/vehicle_details_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart' show rootBundle;

class GetUtility {
  static Future<void> getAccount(BuildContext context) async {
    try {
      var data = await rootBundle.loadString('assets/data/account.json');
      var account = await compute(parseAccountJson, data);
      context.read<UserAccount>().email = account.email;
      context.read<UserAccount>().isCanadian = account.isCanadian;
      account.vehicles.forEach((element) {
        var userVehicle = UserVehicle();
        userVehicle.make = element.make;
        userVehicle.model = element.model;
        userVehicle.year = element.year;
        userVehicle.licensePlate = element.licensePlate;
        userVehicle.vin = element.vin;
        userVehicle.vehicleDescription = element.vehicleDescription;
        userVehicle.nickname = element.nickname;
        userVehicle.postalCode = element.postalCode;
        userVehicle.metric = element.metric;
        userVehicle.kilometers = element.lastOdoKm;
        userVehicle.miles = element.lastOdoMileage;
        context.read<UserAccount>().vehicles.add(userVehicle);
      });
    } catch (e, s) {
      print('$e $s');
    }
  }

  static AccountJson parseAccountJson(String data) {
    return AccountJson.fromJson(json.decode(data));
  }

  static Future<VehicleDetailsJson> getVehicleDetails(String vin) async {
    try {
      var data =
          await rootBundle.loadString('assets/data/vehicle_details.json');
      return compute(parseVehicleDetailsJson, data);
    } catch (e, s) {
      print('$e $s');
      return null;
    }
  }

  static VehicleDetailsJson parseVehicleDetailsJson(String data) {
    return VehicleDetailsJson.fromJson(json.decode(data));
  }

  static Future<List<ServiceRecord>> getShopRecords() async {
    try {
      var data =
          await rootBundle.loadString('assets/data/vehicle_details.json');
      return compute(parseShopRecordsJson, data);
    } catch (e, s) {
      print('$e $s');
      return null;
    }
  }

  static List<ServiceRecord> parseShopRecordsJson(String data) {
    var vehicleDetails = VehicleDetailsJson.fromJson(json.decode(data));
    var serviceRecords = <ServiceRecord>[];
    vehicleDetails.displayRecords.forEach((element) {
      var serviceRecord = ServiceRecord();
      serviceRecord.shopName = element.source.first.text;
      serviceRecord.kmAtService = element.odometerKm;
      serviceRecord.miAtService = element.odometer;
      serviceRecord.date = element.displayDate;
      serviceRecord.servicePerformed = element.details.last.text;
      serviceRecords.add(serviceRecord);
    });
    return serviceRecords;
  }
}
