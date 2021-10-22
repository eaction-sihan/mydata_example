import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1.dart';
import 'package:getx_pattern/app/ui/pages/menu2/tab2.dart';
import 'package:getx_pattern/app/ui/widgets/app_bar1.dart';
import 'package:getx_pattern/app/ui/widgets/bottom_bar.dart';
import 'package:getx_pattern/app/ui/widgets/left_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
            appBar: AppBar1(),
            drawer: LeftMenu1(),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: IndexedStack(
                index: _.tabIndex,
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
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add), onPressed: _.increment));
      },
    );
  }
}
