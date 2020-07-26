import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(bottom: 15,left: 15,right: 20),
          decoration:BoxDecoration(
              color:Color.fromARGB(255, 255, 255, 255),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(2, 2),
                  blurRadius: 8.0)
            ]
          ),

        height:240 ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              child: Row(
                children: [
                  Text("头部的1"),
                  Text("头部的2"),
                ],
              ),
            ),
            Expanded(
              child: Text("中间的"),
            ),
            Container(
              height: 35,
              child: Text("尾部"),
            ),

          ],
        ),
      ),
    );
  }
}