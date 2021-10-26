import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/tab5_1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/writting.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/button/outlined_button_widget.dart';
import 'package:getx_pattern/app/ui/widgets/button/raised_button_widget.dart';
import 'package:getx_pattern/app/ui/widgets/image/image_container.dart';
import 'package:getx_pattern/app/ui/widgets/tab/myinfo_tab.dart';


class Tab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["맛집", "핫딜", "여행", "쿠폰", "아젠다", "트렌드", "라이프"];
    List<IconData> categories_icon = [Icons.food_bank, Icons.whatshot, Icons.airplanemode_active, Icons.money_sharp, Icons.view_agenda, Icons.stacked_bar_chart, Icons.nightlife];

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.6, color: Colors.grey)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        ImageContainer(
                          width: 30,
                          height: 30,
                          borderRadius: 15,
                          imageUrl: 'https://placeimg.com/200/100/people',
                        ),
                        SizedBox(width: 10),
                        Text(
                          'yoojaeseok 님의 아젠다북',
                          style: textTheme().subtitle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButtonWidget(
                          text: "HOME",
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        OutlinedButtonWidget(
                          text: "WRITING",
                          onPressed: () => Get.to(Menu1Tab5Writing()),
                        ),
                        SizedBox(width: 10),
                        OutlinedButtonWidget(
                          text: "HISTORY",
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        RaisedButtonWidget(
                          text: "PICK",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          MyInfoTab(categories: categories, categories_icon: categories_icon, isScroll: true),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                Tab5_1(),
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
