import 'package:zhihu/utils/screen_util.dart';

extension DoubleFit on double {
  double get px {
    return ScreenUtil.setPx(this);
  }

  double get rpx{
    return ScreenUtil.setRpx(this);
  }
}