import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PageDecFra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _pageDecFra(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _pageDecFra(context) {
    return ListView(children: <Widget>[
      TextTopic("Número decimal para fração", first: true),
      TextExp(
          "Basta contar quantas casas decimais após a vírgula e acrescentar zeros no denominador. Por exemplo, uma casa decimal – 10; duas casas decimais – 100, etc."),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 14.0),
        child: _img(),
      ),
    ]);
  }

  _img() {
    return Image.asset(
      "assets/images/decParaFra.png",
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
