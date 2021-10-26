import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:getx_pattern/app/data/model/sales_data.dart';
import 'package:getx_pattern/app/data/provider/request_api.dart';
import 'dart:convert';

import 'package:getx_pattern/app/data/provider/url.dart';

class Menu1Tab2Controller extends GetxController {
  final datas = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  @override
  void onInit() {
    super.onInit();
  }
}
