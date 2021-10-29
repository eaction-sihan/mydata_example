import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class Menu1Tab5WritingStep3_1 extends StatelessWidget {
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
        padding: EdgeInsets.only(top: 15, bottom: 10, left: 25, right: 25),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: EdgeInsets.only(top: 3),
                child: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: fTextColor,
                  size: 18,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '복수응답',
                style: textTheme().bodyText2,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12),
                hintText: '답변 1',
                hintStyle: textTheme().bodyText2,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: fBorderColor, width: 0.6)),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 12),
              hintText: '답변 2',
              hintStyle: textTheme().bodyText2,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: fBorderColor, width: 0.6)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage(
                'images/icon_plus.png',
              ),
              height: 50,
              width: 50,
            ),
          ),
        ]),
      );
    });
  }
}
