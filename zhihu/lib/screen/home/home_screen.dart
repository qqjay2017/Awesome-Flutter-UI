import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:zhihu/iconfont/AliIcons.dart';
import 'package:zhihu/screen/home/homePageViewList.dart';
import 'package:zhihu/utils/screen_util.dart';

import 'home_tab_header_delegate.dart';

import 'package:zhihu/extens/int_fit.dart';

/// 首页

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final ScrollController _homeScrollController = ScrollController();
  final double _homeSearchHeight = 48;
  double _homeSearchBarOpacity = 1;

  TabController _hometabBarController;
  PageController _homePageController;

  @override
  void initState() {
    _hometabBarController = TabController(
      vsync: this,
      length: 4,
    );

    _homePageController = PageController(keepPage: true);

    _homeScrollController.addListener(() {
      if (_homeScrollController.offset < _homeSearchHeight) {
        if (_homeScrollController.offset == 0) {
          setState(() {
            _homeSearchBarOpacity = 1;
          });
        } else {
          setState(() {
            _homeSearchBarOpacity =
                1 - _homeScrollController.offset / _homeSearchHeight;
          });
        }
      }
//      print(_homeSearchBarOpacity);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.initialize(context);
    return NestedScrollView(
      floatHeaderSlivers: false,
      dragStartBehavior: DragStartBehavior.start,
      controller: _homeScrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                children: [
                  homeSearchBar(),
                ],
              );
            }, childCount: 1),
          ),
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: HomeTabHeaderDelegate(hometabBar()))
        ];
      },
      body: PageView(
          children: homePageViewList(),
          controller: _homePageController,
          onPageChanged: (int index) {
            _hometabBarController.index = index;
          }),
    );
  }

  /**
   *PageView(
      physics: physics,
      children: homePageViewList(),
      controller: _homePageController,
      onPageChanged: (int index) {
      _hometabBarController.index = index;
      })
   */

  /// 首页搜索栏  48
  Widget homeSearchBar() {
    return Opacity(
      opacity: _homeSearchBarOpacity,
      child: Container(
//        decoration: BoxDecoration(color: Colors.white),
        height: _homeSearchHeight,
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.rpx,
            top: 18.rpx,
            right: 30.rpx,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/search');
                  },
                  child: Ink(
                    padding: EdgeInsets.only(left: 34.rpx, right: 34.rpx),
                    height: 54.rpx,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.rpx)),
                        color: Color(0xFFe6e6e6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          size: 28.rpx,
                          color: Color(0xFFb3b3b3),
                        ),
                        SizedBox(width: 33.rpx,),
                        Text(
                          "河南高考分数线公布",
                          style: TextStyle(
                              fontSize: 28.rpx, color: Color(0xFFb3b3b3)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Icon(
                  AliIcons.home_search_add,
                  size: 26,
                  color: Color(0xFF36b4ff),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// 首页tab栏  40
  Widget hometabBar() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 40,
      child: TabBar(
        labelColor: Color(0xff0f0f0f),
        unselectedLabelColor: Color(0xff7a7a7a),
        labelStyle: TextStyle(fontSize: 20),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            child: Text(
              "关注",
            ),
          ),
          Tab(
            child: Text("推荐"),
          ),
          Tab(
            child: Text(
              "热榜",
            ),
          ),
          Tab(
            child: Text(
              "圈子",
            ),
          ),
        ],
        onTap: (int index) {
          _homePageController.jumpToPage(index);
        },
        controller: _hometabBarController,
      ),
    );
  }
}
