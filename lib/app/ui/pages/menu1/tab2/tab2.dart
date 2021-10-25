import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab2/tab2_1.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/menu/top_menu.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> categories = ["전체", "Hot딜", "문화", "맛집", "여행"];

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
              'Life',
              style: textTheme().headline1,
            ),
          ),
          TopMenu(categories: categories, isScroll: false),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                Tab2_1(),
                Container(
                    child: Center(
                      child: Text('${categories[1]}'),
                    )),
                Container(
                    child: Center(
                      child: Text('${categories[2]}'),
                    )),
                Container(
                    child: Center(
                      child: Text('${categories[3]}'),
                    )),
                Container(
                    child: Center(
                      child: Text('${categories[4]}'),
                    )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
