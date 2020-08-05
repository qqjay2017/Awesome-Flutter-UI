import 'package:flutter/material.dart';
import 'package:zhihu/components/nav_bar.dart';
import 'package:zhihu/utils/prefs_util.dart';
import 'package:barcode_scan/barcode_scan.dart';
class HuiyuanScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HuiyuanScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            InkWell(
              child: Column(
                children: [
                  FlatButton(
                      onPressed: () async{
                        PrefsUtil.getInstance().then((prefs) {

                      prefs.setString("name", "huiyuan");
                        });
                      },
                      child: Text("存储值"),
                    ),
                  FlatButton(
                    onPressed: ()async{
                      var result = await BarcodeScanner.scan();

                      print(result.type); // The result type (barcode, cancelled, failed)
                      print(result.rawContent); // The barcode content
                      print(result.format); // The barcode format (as enum)
                      print(result.formatNote); // If a unknown format was scanned this field contains a note
                    },
                    child: Text('扫码'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
