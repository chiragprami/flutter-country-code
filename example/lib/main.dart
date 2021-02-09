import 'dart:async';

import 'package:country_code/country_code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    var listOfCountryCode = await getCountryCodeList();
    listOfCountryCode.forEach((countryCode) {
      var countryCodes = countryCode.countryCode; //ex. US
      var countryName = countryCode.countryName; // ex. United States
      var diallingCode = countryCode.diallingCode; // ex. +1
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
