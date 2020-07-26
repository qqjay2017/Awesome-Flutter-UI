import 'package:flutter/material.dart';
import 'package:zhihu/iconfont/AliIcons.dart';
import 'package:zhihu/screen/find_screen.dart';
import 'package:zhihu/screen/home_screen.dart';
import 'package:zhihu/screen/huiyuan_screen.dart';
import 'package:zhihu/screen/my_screen.dart';
import 'package:zhihu/screen/notif_screen.dart';

class BottomNavigationBarItemData extends BottomNavigationBarItem {
  final int index;
  final String routeName;

  final Widget screen;

  final Widget icon;
  final Widget activeIcon;
  final Widget title;

  BottomNavigationBarItemData(
      {Key key,
      @required this.icon,
      this.title,
      this.screen,
      this.activeIcon,
      this.index,
      this.routeName})
      : super(icon: icon, activeIcon: activeIcon, title: title);
}

class RouterConfig {
  static List<BottomNavigationBarItemData> bottomNavigationBarItemDataList =
      <BottomNavigationBarItemData>[
    BottomNavigationBarItemData(
        index: 0,
        routeName: '/home',
        screen: HomeScreen(),
        icon: Icon(AliIcons.nav_home_line),
        activeIcon: Icon(AliIcons.nav_home_full),
        title: Text("首页")),
    BottomNavigationBarItemData(
        index: 1,
        routeName: '/huiyuan',
        screen: HuiyuanScreen(),
        icon: Icon(AliIcons.nav_huiyuan_line),
        activeIcon: Icon(AliIcons.nav_huiyuan_full),
        title: Text("会员")),
    BottomNavigationBarItemData(
        index: 2,
        routeName: '/find',
        screen: FindScreen(),
        icon: Icon(AliIcons.nav_find_line),
        activeIcon: Icon(AliIcons.nav_find_full),
        title: Text("发现")),
    BottomNavigationBarItemData(
        index: 3,
        routeName: '/notif',
        screen: NotifScreen(),
        icon: Icon(AliIcons.nav_notif_line),
        activeIcon: Icon(AliIcons.nav_notif_full),
        title: Text("消息")),
    BottomNavigationBarItemData(
        index: 4,
        routeName: '/my',
        screen: MyScreen(),
        icon: Icon(AliIcons.nav_my_line),
        activeIcon: Icon(AliIcons.nav_my_full),
        title: Text("我的"))
  ];

  static getBottomBarRouteList() {
    return bottomNavigationBarItemDataList;
  }

  static BottomNavigationBarItemData  getBottomBarRoute(int index) {
    for (int i = 0; i < bottomNavigationBarItemDataList.length; i++) {
      if (bottomNavigationBarItemDataList[i].index == index) {
        return bottomNavigationBarItemDataList[i];
      }
    }

    return null;
  }

  static getMaterialAppRoutes(BuildContext context) {
    Map bottomRouteMap = Map<String, WidgetBuilder>();

    bottomNavigationBarItemDataList.forEach((element) {
      bottomRouteMap[element.routeName] = (context) {
        return element.screen;
      };
    });





    return bottomRouteMap;
  }
}
