import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PageFracao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyFracoes(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyFracoes(context) {
    return ListView(children: <Widget>[
      TextTopic("Como montamos uma fração?",first:true),
      TextExp("É bem simples, ela é formada por dois números: o de baixo é o denominador (que é a quantidade que divide a parte inteira) e o de cima é o numerador (que é a parte que selecionamos)"),
      Container(child: _img()),
      
    ]);
  }

  _img2() {
    return Image.asset(
      "assets/images/divisaoFracao.png",
      width: 500,
      height: 150,
    );
  }

  _img() {
    return Image.asset(
      "assets/images/explicacao1.png",
      width: 500,
      height: 100,
    );
  }

  _text1() {
    return Center(
      child: Text(
        "Como montamos uma fração?",
        style: TextStyle(
          fontSize: 23,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.black,
        ),
      ),
    );
  }

  _text2() {
    return Text(
      "É bem simples, ela é formada por dois números: o de baixo é o denominador (que é a quantidade que divide a parte inteira) e o de cima é o numerador (que é a parte que selecionamos)",
      style: TextStyle(
        fontSize: 18,
        wordSpacing: 2,
      ),
    );
  }

  _text1List() {
    return Text(
      "Simplificando frações",
      style: TextStyle(
        fontSize: 23,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        decorationColor: Colors.black,
      ),
    );
  }

  _text2List() {
    return Text(
      "Uma fração pode ser simplificada quando encontramos um número que divide, simultaneamente, o numerador e o denominador. Lembre-se que todas elas representam o mesmo número‼",
      style: TextStyle(
        fontSize: 18,
        wordSpacing: 2,
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.geogebra.org/m/wwafxdzv';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
