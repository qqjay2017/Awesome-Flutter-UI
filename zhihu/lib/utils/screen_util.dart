import 'package:flutter/material.dart';

class ScreenUtil {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double rpx;
  static double px;

  static void initialize(BuildContext context, {double standardWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    // rpx分成750份(750px作为设计稿)
    rpx = screenWidth / standardWidth;

    px = screenWidth / standardWidth * 2;


  }

  // 按照像素来设置
  static double setPx(double size) {
    return ScreenUtil.px * size * 2;
  }

  // 按照rxp来设置
  static double setRpx(double size) {
    return ScreenUtil.rpx * size;
  }


}
