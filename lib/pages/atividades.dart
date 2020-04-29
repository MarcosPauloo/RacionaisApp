
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/widgets/button.dart';
import 'package:projeto_racionais/pages/pageTest.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';

class Atividades extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Atividades",
          style: TextStyle(
            fontSize: 23,
            ),
          ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: _bodyActivity(context),
    );
  }
  _bodyActivity(context){
      return 
      ListView(
        children: <Widget>[
          Container(child: _text()),
          Button("Page test", ()=>OnClickNavigator(context,PageTest()), Colors.green),
            //_img(),
        ],
      );    
  }

  

  
  _text() {
    return Text(
      "Acerta tudo em!!!",
      style: TextStyle(
        fontSize: 20,
      ),
      );
  }
}
