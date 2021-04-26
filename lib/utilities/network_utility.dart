import 'dart:convert';
import 'package:carfax/json/vehicles_json.dart';
import 'package:flutter/services.dart' show rootBundle;

class NetworkUtility {
  static Future<Listings> getVehicles() async {
    try {
      var data = await rootBundle.loadString('assets/data/vehicle.json');
      var stops = Listings.fromJson(json.decode(data));
      return stops;
    } catch (e, s) {
      print('$e $s');
      return null;
    }
  }
}
