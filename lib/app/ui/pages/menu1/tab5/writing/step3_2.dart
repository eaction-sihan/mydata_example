import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/toggle/toggle_type1.dart';

class Menu1Tab5WritingStep3_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

    return GetBuilder<Menu1Tab5WritingController>(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xfff7f7f7),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.only(top:20, bottom: 10, left: 25, right: 25),
        child: ListView(
          children: [
            Container(
              height: 40,
              alignment: Alignment.center,
              child: ToggleType1(
                selections: c.selections5,
                texts: ['텍스트', '숫자'],
                size: 58,
                onPressed: (index) {
                  for (int i = 0; i < c.selections5.length; i++) {
                    c.selections5[i] = i == index;
                  }
                  c.update();
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10, left: 3),
              child: Text(
                '* 대상자가 직접 답을 입력합니다.',
                style: textTheme().bodyText2,
              ),
            )
          ]

        ),
      );
    });
  }
}
