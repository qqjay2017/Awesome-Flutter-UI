import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/config/router_config.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) {
            return RootWidget();
          },
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
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(

        body: RouterConfig.getBottomBarRoute(_currentIndex).screen,
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
      ),
    );
  }
}
