import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/screen/search/search_hot_card.dart';
import 'package:zhihu/screen/search/search_page_top_bar.dart';
import 'package:zhihu/screen/search/search_tab_header_delegate.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            SearchPageTopBar(),

            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                      child:SizedBox(height: 30,)
                  ),
                  SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return SearchHotCard(index);
                      }, childCount: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 4)),
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffcdcaca)))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "更多热搜内容",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff3891df)),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Color(0xff3891df),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    );
                  }, childCount: 1))
                ],
              ),
            )
          ],
        )
            ),
      ),
    );
  }
}
