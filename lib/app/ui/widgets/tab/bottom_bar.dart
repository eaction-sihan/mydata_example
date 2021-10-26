import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/common/main_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  final MainController c = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black26, width: 0.5))),
      child: BottomNavigationBar(
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.nanumGothic(fontSize: 11.0, color: fTextColor, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.nanumGothic(fontSize: 11.0, color: fTextColor),
        onTap: c.changeTabIndex,
        currentIndex: c.tabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon:Icon(Icons.home),
            label: c.bottom_categories[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_outlined),
            activeIcon:Icon(Icons.view_agenda),
            label: c.bottom_categories[1],
          ),
          BottomNavigationBarItem(
            activeIcon:Icon(Icons.calendar_today),
            icon: new Stack(
              children: <Widget>[
                new Icon(Icons.calendar_today_outlined),
                new Positioned(
                  top: 0,
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      '10',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            label: c.bottom_categories[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon:Icon(Icons.account_balance_wallet),
            label: c.bottom_categories[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined),
            activeIcon:Icon(Icons.manage_accounts),
            label: c.bottom_categories[4],
          ),
        ],
      ),
    );
  }
}
