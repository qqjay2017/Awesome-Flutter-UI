import 'package:flutter/material.dart';
import 'home_card_widget.dart';

/// 关注页面
class guanZhuWidget extends StatefulWidget {
  const guanZhuWidget({
    Key key,
  }) : super(key: key);

  @override
  _guanZhuWidgetState createState() => _guanZhuWidgetState();
}

class _guanZhuWidgetState extends State<guanZhuWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 20,
      onRefresh: () {
        return Future.delayed(Duration(seconds: 2));
      },
      child: Container(
        color: Color.fromARGB(255, 246, 246, 246),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 1.674),
          itemBuilder: (ctx, index) {
            return HomeCardWidget();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
