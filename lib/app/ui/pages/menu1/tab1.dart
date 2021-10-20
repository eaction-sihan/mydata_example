import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1_1.dart';
import 'package:getx_pattern/app/ui/widgets/app_bar1.dart';
import 'package:getx_pattern/app/ui/widgets/left_menu1.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
    final HomeController c = Get.put(HomeController());

    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];

    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar1(),
        drawer: LeftMenu1(),
        body: TabBarView(
          children: [
            Tab1_1(),
            Container(
              child: Center(
                child: Text('2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('4'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
