


import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/utils/prefs_util.dart';

class MyScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Column(
            children: [
              InkWell(

                child: Column(
                  children: [
                    FlatButton(onPressed: (){

                        PrefsUtil.getInstance().then((prefs) {
                        var name =   prefs.getString("name");
                        print(name);
                        });

                    }, child: Text("获取值")),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
