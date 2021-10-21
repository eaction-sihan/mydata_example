import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1_1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1_2.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1_3.dart';
import 'package:getx_pattern/app/ui/widgets/top_menu.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
    final HomeController c = Get.put(HomeController());

    List<String> categories = ["전체", "사회", "경제", "문화/연예", "제품", "건강", "기타"];

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
                color: Colors.white),
            child: Text(
              'Agenda',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          TopMenu(categories: categories),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                Tab1_1(),
                Tab1_2(),
                Tab1_3(),
                Container(
                    child: Center(
                  child: Text('${categories[3]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[4]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[5]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[6]}'),
                )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
