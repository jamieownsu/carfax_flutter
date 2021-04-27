import 'dart:convert';
import 'package:carfax/json/account_json.dart';
import 'package:flutter/services.dart' show rootBundle;

class NetworkUtility {
  static Future<Account> getVehicles() async {
    try {
      var data = await rootBundle.loadString('assets/data/account.json');
      var stops = Account.fromJson(json.decode(data));
      return stops;
    } catch (e, s) {
      print('$e $s');
      return null;
    }
  }
}
