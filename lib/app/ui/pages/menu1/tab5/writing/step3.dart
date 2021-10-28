import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/menu1_tab5_wrting_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/step3_1.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/tab/writing_answer_tab.dart';


class Menu1Tab5WritingStep3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["골라주세요!", "어떻게생각해?", "당신의점수는?"];
    List<String> categories_icon = ["images/icon_vs.png", "images/icon_q.png", "images/icon_per.png"];
    List<String> texts = ["햄릿증후군", "의견이 궁금해", "국민심사의원"];

    Menu1Tab5WritingController c = Get.put(Menu1Tab5WritingController());

    return DefaultTabController(
      length: categories.length,
      child: Container(
        color: Colors.white,
        child: Column(
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
            WritingAnswerTab(categories: categories, categories_icon: categories_icon, texts: texts,),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: TabBarView(children: [
                  Menu1Tab5WritingStep3_1(),
                  Container(
                      child: Center(
                        child: Text('${categories[1]}'),
                      )),
                  Container(
                      child: Center(
                        child: Text('${categories[2]}'),
                      )),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
