import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class BottomBar extends StatelessWidget {
  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black38,
      selectedItemColor: Colors.black,
      onTap: c.changeTabIndex,
      currentIndex: c.tabIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '검색',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save_alt),
          label: '저장한 콘텐츠',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '더보기',
        ),
      ],
    );

  }
}
