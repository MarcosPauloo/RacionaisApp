import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PagePorcent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyPorcent(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyPorcent(context) {
    return ListView(children: <Widget>[
      TextTopic("Porcentagem para fração", first: true),
      TextExp(
          "Basta transformar a porcentagem para uma fração com denominador 100."),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 14.0),
        child: _img(),
      ),
    ]);
  }

  _img() {
    return Image.asset(
      "assets/images/porcFra1.png",
      width: 500,
      height: 150,
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
