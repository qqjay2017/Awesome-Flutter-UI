import 'package:flutter/material.dart';

import 'package:zhihu/extens/int_fit.dart';

class SearchTabHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget tabBar;

  SearchTabHeaderDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabBar;
  }


  /// 偏移的尺寸
  @override
  // TODO: implement maxExtent
  double get maxExtent => 170.rpx;

  @override
  // TODO: implement minExtent
  double get minExtent => 170.rpx;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}