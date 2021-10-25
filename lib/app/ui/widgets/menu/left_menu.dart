import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/pages/menu1/menu1_main.dart';
import 'package:getx_pattern/app/ui/pages/menu2/menu2_main.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LeftMenu1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // 프로젝트에 assets 폴더 생성 후 이미지 2개 넣기
          // pubspec.yaml 파일에 assets 주석에 이미지 추가하기
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              // 현재 계정 이미지 set
              backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.white,
            ),
            accountName: Text('한승일', style: GoogleFonts.nanumGothic(fontSize: 14.0, color: Colors.white)),
            accountEmail: Text('sihan@email.com', style: GoogleFonts.nanumGothic(fontSize: 14.0, color: Colors.white)),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
                color: fPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)
                )
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: Text('Agenda', style: textTheme().bodyText1,),
            onTap: () {
              Get.off(() => Menu1Main());
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('Q&A', style: textTheme().bodyText1,),
            onTap: () {
              Get.off(() => Menu2Main());
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('Setting', style: textTheme().bodyText1,),
            onTap: () {
              //Get.off(() => Menu2Main());
            },
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

}
