import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class Menu1Tab5WritingStep1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

    return GetBuilder<Menu1Tab5WritingController>(builder: (_) {
      return ListView(
        //padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            child: ToggleButtons(
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Text("WIFI"),
              ],
              onPressed: (int index) {
                c.selections1[index] = !c.selections1[index];
                c.update();
              },
              isSelected: c.selections1,
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
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
    });
  }
}
