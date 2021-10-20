import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/widgets/button_widget.dart';
import 'package:getx_pattern/app/ui/widgets/bottom_bar.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
    final HomeController c = Get.put(HomeController());

    return Scaffold(
        // count가 변경 될 때마다 Obx(()=> 를 사용하여 Text()에 업데이트합니다.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count1}"))),

        // 8줄의 Navigator.push를 간단한 Get.to()로 변경합니다. context는 필요없습니다.
        body: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: SafeArea(
              child: TabBarView(
                //physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Tab1(),
                  Container(
                    child: Center(
                      child: Text('search'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('save'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('more'),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Botttom(),
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: c.increment
            )
        )
    );
  }
}
