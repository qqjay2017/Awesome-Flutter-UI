
import 'package:flutter/material.dart';
import 'package:zhihu/components/transparent_icon_button.dart';

import 'package:zhihu/extens/int_fit.dart';
class AnswerBar extends StatelessWidget {
  const AnswerBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffdbdada)))
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TransparentIconButton(
            onPressed:(){},
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("头发为什么会自然卷?"), Text('知乎·全部6个回答>')],
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text("写回答"),
          ),
          TransparentIconButton(
            onPressed: (){},

            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
