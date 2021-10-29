import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/box/icon_round_box.dart';
import 'package:getx_pattern/app/ui/widgets/toggle/toggle_type1.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Menu1Tab5WritingStep3_3 extends StatelessWidget {
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
              padding: EdgeInsets.only(top: 20),
              // child: Slider(
              //   value: c.currentSlider1,
              //   min: 0,
              //   max: 100,
              //   divisions: 10,
              //   activeColor: fSecondaryColor,
              //   inactiveColor: Color(0xfff7e256),
              //   thumbColor: Color(0xff917af3),
              //   label: c.currentSlider1.round().toString(),
              //   onChanged: (double value) {
              //     c.currentSlider1 = value;
              //     c.update();
              //   },
              // ),
              child: SfSlider(
                min: 0,
                max: 100,
                value: c.currentSlider1,
                interval: 20,
                stepSize: 5,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                activeColor: Color(0xff917af3),
                inactiveColor: Color(0xfff7e256),
                onChanged: (dynamic value){
                  c.currentSlider1 = value;
                  c.update();
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconRoundBox(title: 'bad', icon: 'images/icon_bad.png'),
                  IconRoundBox(title: 'soso', icon: 'images/icon_soso.png'),
                  IconRoundBox(title: 'good!', icon: 'images/icon_good.png'),
                ],
              ),
            )
          ]
        ),
      );
    });
  }
}
