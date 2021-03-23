import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextTopic extends StatelessWidget {
  @override
  String texto;
  bool first = true;
  TextTopic(this.texto, {this.first});

  Widget build(BuildContext context) {
    if (first) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(child: _text1()),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 13.0),
        child: Container(child: _text1()),
      );
    }
  }

  _text1() {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 23,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        decorationColor: Colors.black,
      ),
    );
  }
}
