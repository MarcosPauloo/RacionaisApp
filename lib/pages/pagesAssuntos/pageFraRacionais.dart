import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pageTest2.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';


class PageFraDecimais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyFraDec(context),
      floatingActionButton: FloatingActionButton(
          child: Text(
            "Atividade",
            style: TextStyle(
              fontSize: 10
            ),
          ),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyFraDec(context) {
    return ListView(children: <Widget>[
      TextTopic("Fralçoes para decimais", first: true),
      TextExp("1º CASO:  Frações com denominador 10,100,1000…"),
      TextExp(
          "Basta contar a quantidade de zeros e colocar como casas decimais no numerador."),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: _img(),
      ),
      TextExp("2º CASO:  Frações com outros denominadores"),
      TextExp("Basta dividir os dois números."),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: _img2(),
      ),
    ]);
  }

  _img() {
    return Image.asset(
      "assets/images/fraParaNumDec1.png",
      width: 500,
      height: 120,
    );
  }

  _img2() {
    return Image.asset(
      "assets/images/fraParaNumDec2.png",
      width: 500,
      height: 150,
    );
  }

  _launchURL() async {
    const url = 'https://www.geogebra.org/m/yayxu2k2';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
