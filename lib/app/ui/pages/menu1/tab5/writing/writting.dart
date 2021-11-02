import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step1.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step2.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step3.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/appbar/app_bar2.dart';
import 'package:getx_pattern/app/ui/widgets/dialog/confirm.dart';
import 'package:google_fonts/google_fonts.dart';

/// This is the main application widget.
class Menu1Tab5Writing extends StatelessWidget {
  static const String _title = 'WRITING';

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
          return GestureDetector(
              onTap: () {
                // 키보드 숨김
                FocusScope.of(context).unfocus();
              },
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: PageView.builder(
                        physics: new NeverScrollableScrollPhysics(),
                        controller: c.pageController,
                        itemCount: _stepPages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _stepPages[index % _stepPages.length];
                        },
                      ),
                    ),
                    getButton(c, context),
                  ],
                ),
              ));
        }));
  }

  Container getButton(Menu1Tab5WritingController c, BuildContext context) {
    print("c.curPage : ${c.curPage}");
    switch (c.curPage) {
      case 0:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fSecondaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 50)),
                child: Text(
                  'NEXT',
                  style: GoogleFonts.nanumGothic(
                      fontSize: 16.0,
                      color: fPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
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
                    primary: Color(0XFFEAEAEA),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'PREV',
                  style: GoogleFonts.nanumGothic(
                      fontSize: 16.0,
                      color: fTextColor,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fSecondaryColor,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'NEXT',
                  style: GoogleFonts.nanumGothic(
                      fontSize: 16.0,
                      color: fPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
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
                    primary: Color(0XFFEAEAEA),
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'PREV',
                  style: GoogleFonts.nanumGothic(
                      fontSize: 16.0,
                      color: fTextColor,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fPrimaryColor,
                    minimumSize:
                    Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'SAVE & PREVIEW',
                  style: GoogleFonts.nanumGothic(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  ConfirmModal(
                    title: '진행하시겠습니까?',
                  ).show(context).then((exit) {
                    if (exit!) {
                      Get.back();
                    }
                  }) ;
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
