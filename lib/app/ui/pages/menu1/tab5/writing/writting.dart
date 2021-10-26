import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step2.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step3.dart';
import 'package:getx_pattern/app/ui/widgets/appbar/app_bar2.dart';

/// This is the main application widget.
class Menu1Tab5Writing extends StatelessWidget {
  static const String _title = 'WRITING';

  //final Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

  List<Widget> _stepPages = [
    Menu1Tab5WritingStep1(),
    Menu1Tab5WritingStep2(),
    Menu1Tab5WritingStep3(),
  ];

  @override
  Widget build(BuildContext context) {
    Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());
    return Scaffold(
        appBar: AppBar2(title: _title),
        body: GetBuilder<Menu1Tab5WritingController>(builder: (_) {
            return Column(
              children: <Widget>[
                Flexible(
                  child: PageView.builder(
                    physics:new NeverScrollableScrollPhysics(),
                    controller: c.pageController,
                    itemCount: _stepPages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _stepPages[index % _stepPages.length];
                    },
                  ),
                ),
                getButton(c),
              ],
            );
          }
        )
    );
  }

  Container getButton(Menu1Tab5WritingController c) {
    switch (c.curPage) {
      case 0:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text('Next'),
                onPressed: () {
                  c.nextPage();
                },
              )
            ],
          ),
        );
        break;
      case 1:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Prev'),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text('Next'),
                onPressed: () {
                  c.nextPage();
                },
              )
            ],
          ),
        );
        break;
      case 2:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Prev'),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text('Save'),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ),
        );
        break;
      default:
        return Container();
    }
  }
}
