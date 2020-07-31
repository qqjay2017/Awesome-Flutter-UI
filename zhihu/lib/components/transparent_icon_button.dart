import 'package:flutter/material.dart';

class TransparentIconButton extends IconButton {


  TransparentIconButton({
    Key key,
    @required Widget icon,
    @required VoidCallback onPressed,
  }) : super(
          key: key,
          icon: icon,
          onPressed: onPressed,
          enableFeedback: false,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        );
}
