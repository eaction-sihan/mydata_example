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

  late double currentSlider1;
  late bool isChecked;
  late List<bool> selections1;
  late List<bool> selections2_1;
  late List<bool> selections2_2;
  late List<bool> selections2_3;
  late List<bool> selections3;
  late List<bool> selections4;
  late List<bool> selections5;
  late String dropdownValue1;
  late List<String> dropdownList1;

  @override
  void onInit() {
    curPage = 0;
    currentSlider1 = 0;
    isChecked = false;
    selections1 = [true, false];
    selections2_1 = [true, false, false];
    selections2_2 = List.generate(3, (index) => false);
    selections2_3 = List.generate(2, (index) => false);
    selections3 = [true, false, false];
    selections4 = [false, false];
    selections5 = [true, false];
    dropdownValue1 = '카테고리 설정';
    dropdownList1 = ['카테고리 설정', '사회', '경제', '문화/연예', '제품', '건강', '기타'];
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
