import 'package:flutter/material.dart';

import 'package:zhihu/extens/int_fit.dart';

class SearchHotCard extends StatelessWidget {
  const SearchHotCard(
      int index ,{
        Key key,
      }) : this.index = index+1,super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(index.toString(),style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.rpx,
              color: index>3?Color(0xffc0c0c0):Color(0xffeea030),
              height: 1.4
          ),),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('花儿乐队重组',style: TextStyle(
                    fontSize: 24.rpx,
                    color: Color(0xff363636),
                ),),
                SizedBox(height: 6.rpx,),
                Text('主唱不再是大张伟',style: TextStyle(
                  fontSize: 22.rpx,
                  color: Color(0xffa5a5a5),

                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
