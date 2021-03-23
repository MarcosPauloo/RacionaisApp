import 'package:flutter/cupertino.dart';

class TextExp extends StatelessWidget {
  @override

  String texto;

  TextExp(this.texto);

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 8.0),
        child:Container(child: _text2List()),
      )
    ;
  }

  _text2List() {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18,
        wordSpacing: 2,
      ),
    );
  }
}