import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';

class BottomBar extends StatelessWidget {
  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black26, width: 0.5))),
      child: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        // selectedLabelStyle: GoogleFonts.nanumGothic(fontSize: 13.0, color: fTextColor, fontWeight: FontWeight.bold),
        // unselectedLabelStyle: GoogleFonts.nanumGothic(fontSize: 13.0, color: fTextColor),
        onTap: c.changeTabIndex,
        currentIndex: c.tabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: '내정보',
          ),
        ],
      ),
    );
  }
}
