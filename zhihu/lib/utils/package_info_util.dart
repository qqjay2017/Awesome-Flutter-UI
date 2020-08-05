import 'package:package_info/package_info.dart';

class PackageInfoUtil {
    static PackageInfo _packageInfo;

    static Future<PackageInfo> get packageInfo async {
      if(_packageInfo == null){
        _packageInfo = await PackageInfo.fromPlatform();
      }

      return _packageInfo;
    }
}