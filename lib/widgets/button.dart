import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function onPressed;
  Color cor;

  Button(this.text,this.cor,{this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: cor,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
    );
  }
}
