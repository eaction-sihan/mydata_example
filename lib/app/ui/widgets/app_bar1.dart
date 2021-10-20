import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'badge_icon.dart';

class AppBar1 extends StatelessWidget with PreferredSizeWidget {
  // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Obx(() => Text("Clicks: ${c.count1}")),
      centerTitle: true,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search), // 검색 아이콘 생성
          onPressed: () {
            // 아이콘 버튼 실행
            print('Search button is clicked');
          },
        ),
        NamedIcon(
          iconData: Icons.mail,
          notificationCount: 1,
          onTap: () {},
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
