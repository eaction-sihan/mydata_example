import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/dropdown/dropdown_box.dart';

class Menu1Tab5WritingStep2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

    return GetBuilder<Menu1Tab5WritingController>(builder: (_) {
      return Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 30),
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              child: Row(children: [
                Text(
                  'Step.2 Agenda 작성',
                  style: textTheme().headline1,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 10, bottom: 10),
              child: Row(children: [
                Text(
                  '카테고리',
                  style: textTheme().headline2,
                ),
              ]),
            ),
            DropdownBox(
                dropdownList: c.dropdownList1,
                dropdownValue: c.dropdownValue1,
                onChanged: (String? newValue) {
                  c.dropdownValue1 = newValue!;
                  c.update();
                }),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '파일첨부',
                  style: textTheme().headline2,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '개요작성',
                  style: textTheme().headline2,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: TextField(
                maxLines: 5,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: new BorderSide(
                        color: Color(0xffbbbbbb),
                        width: 0.6,
                      )
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '문항수',
                  style: textTheme().headline2,
                ),
              ]),
            ),
          ],
        ),
      );
    });
  }
}
