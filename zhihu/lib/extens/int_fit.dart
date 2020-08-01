import 'package:zhihu/utils/screen_util.dart';

extension IntFit on int{
  double get px {
    return ScreenUtil.setPx(this.toDouble());
  }


  /**
   * import 'package:zhihu/extens/int_fit.dart';
   */
  double get rpx {
    return ScreenUtil.setRpx(this.toDouble());
  }
}