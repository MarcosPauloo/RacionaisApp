import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/login.dart';
import 'package:projeto_racionais/pages/cadastro.dart';
import 'package:projeto_racionais/classes/Aluno';
import 'package:projeto_racionais/utils/nav.dart';
import 'package:projeto_racionais/widgets/button.dart';

import 'classes/OnClickNavigator.dart';

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

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
          backgroundColor: Colors.blue),
      body: _bodyMain(context),
    );
  }

  _bodyMain(context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("assets/images/logo.png"), fit: BoxFit.cover),
        //color: Colors.white,
        /*gradient: LinearGradient(
            colors: [
              Color(0xFF20CC32),
              Color(0xFF298031),
            ],
          )*/
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _buttons(context),
        ],
      ),
    );
  }

  _buttons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 190.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button(context, "Login",
              () => OnClickNavigator(context, Login(), replace: true)),
          _button(
              context, "Cadastro", () => OnClickNavigator(context, Cadastro())),
        ],
      ),
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);
    print(s);
  }

  _button(BuildContext context, String text, Function onPressed) {
    Color cor = Colors.lightBlue;
    return Button(
      text,
      cor,
      onPressed: onPressed,
    );
  }

  bool _selection = false;
  _popMenu(context) {
    return PopupMenuButton(
      onSelected: (result) {
        setState(() {
          _selection = result;
        });
      },
      itemBuilder: (BuildContext context2) => <PopupMenuEntry>[
        const PopupMenuItem(child: Text("Working a lot harder")),
      ],
    );
  }

  _img() {
    return Image.asset(
      "assets/images/logo.png",
      height: 600,
    );
  }
}
