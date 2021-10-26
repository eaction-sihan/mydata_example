import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:getx_pattern/app/data/model/neighborhood_life.dart';
import 'package:getx_pattern/app/data/provider/request_api.dart';
import 'dart:convert';

import 'package:getx_pattern/app/data/provider/url.dart';

class Menu1Tab5WritingController extends GetxController {
  PageController pageController = PageController(initialPage: 0);
  int curPage = 0;

  double currentSlider1 = 20;
  bool isChecked = false;
  List<bool> selections1 = List.generate(3, (index) => false);
  String dropdownValue1 = 'One';

  @override
  void onInit() {
    curPage = 0;
    super.onInit();
  }

  previousPage() {
    pageController.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    curPage--;
    update();
  }

  nextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    curPage++;
    update();
  }

}
