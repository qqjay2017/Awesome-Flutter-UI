import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';

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
        if(_homeScrollController.offset==0){
          setState(() {
            _homeSearchBarOpacity =
               1;
          });
        }else{
          setState(() {
            _homeSearchBarOpacity =
              1-  _homeScrollController.offset / _homeSearchHeight;
          });
        }


      }
      print(_homeSearchBarOpacity);
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
                    child: Column(
                      children: [
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                        Text("12354"),
                      ],
                    ),
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

class HomeTabHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget tabBar;

  HomeTabHeaderDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabBar;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
