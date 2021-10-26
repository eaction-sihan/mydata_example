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
    });
  }
}
