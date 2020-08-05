import 'package:flutter/material.dart';
import 'package:zhihu/components/transparent_icon_button.dart';
import 'package:zhihu/extens/int_fit.dart';
import 'package:zhihu/utils/screen_util.dart';

import 'answer_bar.dart';

class AnswerToQuestion extends StatefulWidget {
 String arguments ;

 AnswerToQuestion(this.arguments);

  @override
  _AnswerToQuestionState createState() => _AnswerToQuestionState();
}

class _AnswerToQuestionState extends State<AnswerToQuestion> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AnswerBar(),
              Expanded(
                  child: CustomScrollView(slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Text(
                      "123",
                      style: TextStyle(fontSize: 30),
                    );
                  }, childCount: 30),
                ),
              ])),
              Container(
                padding: EdgeInsets.only(top: 22.rpx,left: 22.rpx),
//                height: 84.rpx,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.rpx,
                      height: 65.rpx,
                      decoration: BoxDecoration(
                          color: Color(0xffebf5ff),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(widget.arguments),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    IconTextButton(),
                    IconTextButton(),
                    IconTextButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.rpx, right: 22.rpx),
      child: Column(
        children: [
          Icon(
            Icons.favorite_border,
            size: 34.rpx,
            color: Color(0xff8792a7),
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            "喜欢77",
            style: TextStyle(fontSize: 16.rpx, color: Color(0xff8792a7)),
          )
        ],
      ),
    );
  }
}
