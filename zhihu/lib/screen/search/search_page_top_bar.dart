import 'package:flutter/material.dart';

import 'package:zhihu/extens/int_fit.dart';

class SearchPageTopBar extends StatefulWidget {
  SearchPageTopBar({
    Key key,
  }) : super(key: key);

  @override
  _SearchPageTopBarState createState() => _SearchPageTopBarState();
}

class _SearchPageTopBarState extends State<SearchPageTopBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 96.rpx,
          color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.all(16.rpx),
            child: Container(
             height: 60.rpx,
              decoration: BoxDecoration(
                  color: Color(0xffe6e6e6),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Icon(
                          Icons.arrow_back,
                          size: 34.rpx,
                          color: Color(0xff4c4c4c),
                        ),
                      )),
                  Text(
                    "搜索知乎内容",
                    style: TextStyle(fontSize: 30.rpx, color: Color(0xFFb3b3b3)),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 74.rpx,
//          padding:  EdgeInsets.only(top: 20,left: 40.rpx,right: 40.rpx),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Color(0XFFdad8d8)))),
          child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xff222222),
              labelColor: Color(0xff030303),
              labelStyle: TextStyle(fontSize: 14),
              unselectedLabelColor: Color(0xffa4a4a4),
              unselectedLabelStyle: TextStyle(fontSize: 14),
              labelPadding:
               EdgeInsets.only(bottom: 12.rpx),
              controller: TabController(length: 7, vsync: this),
              onTap: (int index) {},
              tabs: <Widget>[
                Text("热搜"),
                Text("数码"),
                Text("影视"),
                Text("科学"),
                Text("体育"),
                Text("游戏"),
                Text("百科"),
              ]),
        )
      ],
    );
  }
}
