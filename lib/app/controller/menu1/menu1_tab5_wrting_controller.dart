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

  @override
  void onInit() {

    print('init :${curPage}');
    curPage = 0;
    super.onInit();
  }

  @override
  void dispose() {
    print('dispose :${curPage}');
    super.dispose();
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
