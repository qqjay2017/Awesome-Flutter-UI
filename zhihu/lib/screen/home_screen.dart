import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';

import 'home/home_card_widget.dart';
import 'home/home_tab_header_delegate.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _homeScrollController = ScrollController();
  final double _homeSearchHeight = 48;
  double _homeSearchBarOpacity = 1;

  @override
  void initState() {
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
    return Stack(
      children: [
        InkWell(

          child: Column(
            children: [
              Expanded(
                child: NestedScrollView(
                  controller: _homeScrollController,
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
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
                        delegate: HomeTabHeaderDelegate(homeTabBar()),
                      )
                    ];
                  },
                  body: Container(
                    color: Color.fromARGB(255, 246  , 246, 246),
                    child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return HomeCardWidget();
                        }),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget homeSearchBar() {
    return Opacity(
      opacity: _homeSearchBarOpacity,
      child: Container(
        decoration: BoxDecoration(color: Colors.deepOrange),
        height: _homeSearchHeight,
        child: Row(
          children: [
            Text("homeSearchBar"),
          ],
        ),
      ),
    );
  }

  Widget homeTabBar() {
    return Container(
      decoration: BoxDecoration(color: Colors.indigo),
      height: 40,
    );
  }
}




