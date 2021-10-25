import 'dart:io';

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
        return new WillPopScope(
            onWillPop: () => showExitPopup(context),
            child: Scaffold(
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
                    child: Icon(Icons.add), onPressed: _.increment)));
      },
    );
  }

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("종료하시겠습니까?"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected');
                            exit(0);
                          },
                          child: Text("Yes"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue.shade800),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          print('no selected');
                          Navigator.of(context).pop();
                        },
                        child:
                            Text("No", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
