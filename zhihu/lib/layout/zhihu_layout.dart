import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/config/router_config.dart';
import 'package:zhihu/screen/search/search_screen.dart';

/// 总布局

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white)),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) {
            return RootWidget();
          },
          '/search':(Build){
            return SearchScreen();
          }
        },
        initialRoute: '/',
      ),
    );
  }
}

class RootWidget extends StatefulWidget {
  const RootWidget({
    Key key,
  }) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RouterConfig.getBottomBarRoute(_currentIndex).screen,
      ),
      bottomNavigationBar: NavBarWidget(
        currentIndex: _currentIndex,
        onTapCallback: (index) {
          if (_currentIndex != index) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
