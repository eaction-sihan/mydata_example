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
    return ListView(
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
              'Step.1 Target 설정',
              style: textTheme().headline1,
            ),
          ]),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            alignment: Alignment.center,
            child: ToggleType1(
              selections: c.selections1,
              texts: ['아젠다 공개', '아젠다 비공개'],
              onPressed: (index) {
                //c.selections1[index] = !c.selections1[index];
                for (int i = 0; i < c.selections1.length; i++) {
                  c.selections1[i] = i == index;
                }
                c.update();
              },
            )
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 18, top: 25, bottom: 10),
          child: Row(children: [
            Text(
              '국가설정',
              style: textTheme().headline2,
            ),
          ]),
        ),
        SelectBox(title: '국가 선택 (최대 5개국)'),
        Container(
          color: Colors.white,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 18, top: 25, bottom: 10),
          child: Row(children: [
            Text(
              '연령설정',
              style: textTheme().headline2,
            ),
          ]),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            alignment: Alignment.center,
            child: Column(
                children: [
                  ToggleType1(
                    selections: c.selections2_1,
                    texts: ['전체선택', '10대', '20대'],
                    type: 'top',
                    onPressed: (index) {
                      for (int i = 0; i < c.selections2_1.length; i++) {
                        c.selections2_1[i] = i == index;
                      }
                      for (int i = 0; i < c.selections2_2.length; i++) {
                        c.selections2_2[i] = false;
                      }
                      for (int i = 0; i < c.selections2_3.length; i++) {
                        c.selections2_3[i] = false;
                      }
                      c.update();
                    },
                  ),
                  ToggleType1(
                    selections: c.selections2_2,
                    texts: ['30대', '40대', '50대'],
                    type: 'middle',
                    onPressed: (index) {
                      for (int i = 0; i < c.selections2_1.length; i++) {
                        c.selections2_1[i] = false;
                      }
                      for (int i = 0; i < c.selections2_2.length; i++) {
                        c.selections2_2[i] = i == index;
                      }
                      for (int i = 0; i < c.selections2_3.length; i++) {
                        c.selections2_3[i] = false;
                      }
                      c.update();
                    },
                  ),
                  ToggleType2(
                    selections: c.selections2_3,
                    texts: ['60대', '70대 이상'],
                    type: 'bottom',
                    onPressed: (index) {
                      for (int i = 0; i < c.selections2_1.length; i++) {
                        c.selections2_1[i] = false;
                      }
                      for (int i = 0; i < c.selections2_2.length; i++) {
                        c.selections2_2[i] = false;
                      }
                      for (int i = 0; i < c.selections2_3.length; i++) {
                        c.selections2_3[i] = i == index;
                      }
                      c.update();
                    },
                  ),
                ]
            )
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 18, top: 25, bottom: 10),
          child: Row(children: [
            Text(
              '성별설정',
              style: textTheme().headline2,
            ),
          ]),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            alignment: Alignment.center,
            child: ToggleType1(
              selections: c.selections3,
              texts: ['전체선택', '남성', '여성'],
              onPressed: (index) {
                //c.selections1[index] = !c.selections1[index];
                for (int i = 0; i < c.selections3.length; i++) {
                  c.selections3[i] = i == index;
                }
                c.update();
              },
            )
        ),

        Container(
          color: Colors.white,
          height: 50,
          child: DropdownButton<String>(
            value: c.dropdownValue1,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            onChanged: (String? newValue) {
              c.dropdownValue1 = newValue!;
              c.update();
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Container(
          color: Colors.white,
          height: 50,
          child: Slider(
            value: c.currentSlider1,
            min: 0,
            max: 100,
            divisions: 5,
            label: c.currentSlider1.round().toString(),
            onChanged: (double value) {
              c.currentSlider1 = value;
              c.update();
            },
          ),
        ),
      ],
    );
  }
}
