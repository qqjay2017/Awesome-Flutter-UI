import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:zhihu/config/router_config.dart';
import 'package:zhihu/iconfont/AliIcons.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key key, this.currentIndex, this.onTapCallback})
      : super(key: key);

  final int currentIndex;
  final Function onTapCallback;

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      selectedItemColor: Color.fromARGB(255, 50, 50, 50),
      unselectedItemColor: Color.fromARGB(255, 100, 100, 100),
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: RouterConfig.getBottomBarRouteList(),
      onTap: (int index) {
        widget.onTapCallback(index);
      },
    );
  }
}
