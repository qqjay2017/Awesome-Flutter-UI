


import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';

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
                    Text("wodoeoeoeeeee"),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
