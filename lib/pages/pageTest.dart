import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pageTest2.dart';
import 'package:projeto_racionais/widgets/button.dart';

class PageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Page Test"),
      ),
      body: _bodyPageTest1(context),
    );
  }

  _bodyPageTest1(context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //eixo principal e o outro e o secundario(cross)

        children: <Widget>[
          _text(),
          _pageView(), 
          _buttons(context)
        ],
      ),
    );
  }

  _text() {
    return Text("APRENDENDO");
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 200,
      child: PageView(
        children: <Widget>[
          _img(),
          _img(),
          _img(),
          _img(),
        ],
      ),
    );
  }

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context),
            _button(context),
            _button(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context),
            _button(context),
            _button(context),
          ],
        ),
      ],
    );
  }

  _img() {
    return Image.asset(
      "assets/images/explicacao1.png",
      width: 100,
      height: 100,
    );
  }

  _button(context){
    return RaisedButton(
        color: Colors.blue,
        child: Text(
          "texto",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ), 
        ),
        onPressed: ()=>OnClickNavigator(context, PageTest2()),
      );
  }
}
