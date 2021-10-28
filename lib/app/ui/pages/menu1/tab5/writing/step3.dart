import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/box/select_box.dart';
import 'package:getx_pattern/app/ui/widgets/toggle/toggle_type1.dart';
import 'package:getx_pattern/app/ui/widgets/toggle/toggle_type2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class Menu1Tab5WritingStep3 extends StatelessWidget {
  Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        //padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            child: Row(children: [
              Text(
                'Step.3  질문 작성',
                style: textTheme().headline1,
              ),
            ]),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 18, top: 10, bottom: 10),
            child: Row(children: [
              Text(
                '질문작성',
                style: textTheme().headline2,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12),
                hintText: 'Q.',
                hintStyle: textTheme().bodyText2,
                filled: true,
                fillColor: Color(0XFFECEBFF),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: fBorderColor, width: 0.6)
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 18, top: 25, bottom: 10),
            child: Row(children: [
              Text(
                '답변유형',
                style: textTheme().headline2,
              ),
            ]),
          ),

        ],
      ),
    );
  }
}
