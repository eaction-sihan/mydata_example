import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1/tab1_1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1/tab1_2.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab1/tab1_3.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/tab/top_tab.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> categories = ["전체", "사회", "경제", "문화/연예", "제품", "건강", "기타"];

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.6, color: Colors.grey)),
                color: Colors.white),
            child: Row(children: [
              Text(
                'Agenda',
                style: textTheme().headline1,
              ),
              SizedBox(width: 5),
              Icon(
                FontAwesomeIcons.chevronCircleDown,
                color: fPrimaryColor,
                size: 16,
              ),
            ]),
          ),
          TopTab(categories: categories, isScroll: true),
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
