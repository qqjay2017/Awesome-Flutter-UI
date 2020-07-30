import 'package:flutter/material.dart';

import 'guanzhuWidget.dart';

List<Widget> homePageViewList(){
  return [
    guanZhuWidget(),
    Text("推荐"),
    Text("热榜"),
    Text("圈子"),
  ];
}