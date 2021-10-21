import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1.dart';
import 'package:getx_pattern/app/ui/pages/menu2/tab2.dart';
import 'package:getx_pattern/app/ui/widgets/app_bar1.dart';
import 'package:getx_pattern/app/ui/widgets/bottom_bar.dart';
import 'package:getx_pattern/app/ui/widgets/left_menu.dart';

import 'details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
    final HomeController c = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar1(),
      drawer: LeftMenu1(),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return DefaultTabController(
            length: 4,
            child: Scaffold(
                backgroundColor: Colors.white,
                body: SafeArea(
                  child: IndexedStack(
                    index: c.tabIndex,
                    children: <Widget>[
                      Tab1(),
                      Tab2(),
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
                bottomNavigationBar: BottomBar(),
                floatingActionButton: Padding(
                    padding: const EdgeInsets.only(),
                    child: FloatingActionButton(
                        child: Icon(Icons.add), onPressed: c.increment))),
          );
        },
      ),
    );
  }
}
