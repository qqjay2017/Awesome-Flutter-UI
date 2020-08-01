import 'package:flutter/material.dart';

/// all Icons under MaterialCommunityIcons
///
/// file:///C:/Users/huang/Desktop/download/font_1967381_wgui6txetnd/demo_index.html
///
///

class AliIconData extends IconData {
  const AliIconData(
    int codePoint,
  ) : super(codePoint, fontFamily: 'iconfont');
}

class AliIcons {
  AliIcons._();

  static const IconData nav_home_line = const AliIconData(0xe615);
  static const IconData nav_huiyuan_line = const AliIconData(0xe6bb);
  static const IconData nav_find_line = const AliIconData(0xe600);
  static const IconData nav_notif_line = const AliIconData(0xe660);
  static const IconData nav_my_line = const AliIconData(0xe623);


  static const IconData nav_home_full = const AliIconData(0xe61b);
  static const IconData nav_huiyuan_full = const AliIconData(0xe61d);
  static const IconData nav_find_full = const AliIconData(0xe61c);
  static const IconData nav_notif_full = const AliIconData(0xe61a);
  static const IconData nav_my_full = const AliIconData(0xe61e);


  static const IconData home_search_add = const AliIconData(0xe61f);
  static const IconData home_card_agree = const AliIconData(0xe620);
  static const IconData home_card_message = const AliIconData(0xe621);



}
