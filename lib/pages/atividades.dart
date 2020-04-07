import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atividades extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atividades"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: _body(),
    );
  }
  _body(){
    Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          _img(),
        ],
      ),
    );
  }
  _img() {
    return Image.asset(
        "assets/images/explicacao1.png",
    );
  }
}
