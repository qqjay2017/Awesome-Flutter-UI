import 'package:flutter/material.dart';

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
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top:12,left: 16, right: 16),
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                  color: Color(0xffebebeb),
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
                          size: 14,
                          color: Color(0xff4c4c4c),
                        ),
                      )),
                  Text(
                    "搜索知乎内容",
                    style: TextStyle(fontSize: 14, color: Color(0Xffcfcfcf)),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
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
              const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 12),
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
