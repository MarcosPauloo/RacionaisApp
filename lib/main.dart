import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/login.dart';
import 'package:projeto_racionais/pages/cadastro.dart';
import 'package:projeto_racionais/classes/Aluno';
import 'package:projeto_racionais/utils/nav.dart';
import 'package:projeto_racionais/widgets/button.dart';

import 'classes/OnClickNavigator.dart';

void main() => runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Racionais App",
              textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: _bodyMain(context),
      );
  }

   _bodyMain(context) {
    return Container(

      decoration: new BoxDecoration(
          //image: new DecorationImage(image: new AssetImage("images/test.png"),fit: BoxFit.cover),
          color: Colors.white,
        /*gradient: LinearGradient(
            colors: [
              Color(0xFF20CC32),
              Color(0xFF298031),
            ],
          )*/
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buttons(context),
          ]
      ),
    );
  }

  _buttons(BuildContext context){
    return Column(

      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),

          child: Text(
            "Bem Vindo!",
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Arial',
              fontStyle: FontStyle.normal,
              color: Colors.green,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button(context, "Login" ,  () => OnClickNavigator(context, Login(), replace: true)),
              _button(context, "Cadastro", () => OnClickNavigator(context, Cadastro())),
            ],
        ),
      ],

    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async{
    String s = await push(context, page);
    print(s);
  }

  _button(BuildContext context,String text, Function onPressed) {
    Color cor = Colors.green;
    return Button(text,cor, onPressed: onPressed,);
  }
}






