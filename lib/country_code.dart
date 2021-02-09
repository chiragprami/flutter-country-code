import 'dart:async';
import 'dart:convert';

import 'package:country_code_list/CountryModel.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CountryCode {
  static const MethodChannel _channel = const MethodChannel('country_code');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) async {
    print('--- Parse json from: $assetsPath');
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }


}

Future<List<CountryModel>> getCountryCodeList() async {
  String data = await rootBundle.loadString('assets/data.json');
  var jsonResult = json.decode(data);
  return jsonResult['countryCodes'] != null
      ? (jsonResult['countryCodes'] as List)
      .map((i) => CountryModel.fromJson(i))
      .toList()
      : List();
}