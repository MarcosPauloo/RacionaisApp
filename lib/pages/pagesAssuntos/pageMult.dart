import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PageMult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyMult(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyMult(context) {
    return ListView(children: <Widget>[
      TextTopic("Multiplicação de frações",first:true),
      TextExp("Para multiplicar frações, basta multiplicarmos os numeradores e, depois, os denominadores."),
      _img(),
      TextExp("Observação: Para calcular uma fração de um número, basta multiplicar os dois. Por exemplo, "),
      _img2(),
    ]);
  }

  _img2() {
    return Image.asset(
      "assets/images/mult2.png",
      width: 500,
      height: 150,
    );
  }

  _img() {
    return Image.asset(
      "assets/images/mult1.png",
      width: 500,
      height: 150,
    );
  }

  _launchURL() async {
    const url = 'https://www.geogebra.org/m/vrtewe9c';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
