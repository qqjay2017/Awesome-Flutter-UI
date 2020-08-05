import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:jpush_flutter/jpush_flutter.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/config/router_config.dart';
import 'package:zhihu/route/on_generate_route.dart';
import 'package:zhihu/screen/answer/answer_screen.dart';
import 'package:zhihu/screen/search/search_screen.dart';
import 'package:zhihu/utils/screen_util.dart';

/// 总布局

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final JPush jpush = JPush();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initPlatformState();  /*极光插件平台初始化*/
  }

  Future<void> initPlatformState() async {

    jpush.setup(
      appKey: "ec2c435ccf22f2e2b42486a5",
      channel: "theChannel",
      production: false,
      debug: false, // 设置是否打印 debug 日志
    );


    String platformVersion;

    try{

      jpush.applyPushAuthority( NotificationSettingsIOS(
          sound: true,
          alert: true,
          badge: true));


      jpush.addEventHandler(
        // 接收通知回调方法。
          onReceiveNotification:(Map<String, dynamic> event) async{
            print(">>>>>>>>>>>>>>>>>flutter 接收到推送: $event");
          },
        onReceiveMessage: (Map<String, dynamic> message) async {
          print("flutter onReceiveMessage: $message");
        },
      );
    }on PlatformException{
      print(">>>>>>>>>>>>>>>>>flutter 平台版本获取失败，请检查！");
    }

    jpush.getRegistrationID().then((rid) { });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: MaterialApp(
        theme: ThemeData(
            backgroundColor:Colors.white,
            appBarTheme: AppBarTheme(color: Colors.white)),
//        routes: <String, WidgetBuilder>{
//          '/': (BuildContext context) {
//            return RootWidget();
//          },
//          '/search':(BuildContext context){
//            return SearchScreen();
//          },'/question':(BuildContext context){
//            return AnswerToQuestion();
//          }
//        },
        initialRoute: '/home',
        onGenerateRoute: onGenerateRoute,
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
