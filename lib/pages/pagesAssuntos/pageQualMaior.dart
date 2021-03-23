import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';


class PageMaior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyComp(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyComp(context){
    return ListView(
      children: <Widget>[
        TextTopic("Comparando frações", first: true,),
        TextExp("Para determinarmos quem é a maior fração, vamos analisar dois casos:"),
        TextExp("1º CASO: Denominadores iguais."),
        TextExp("Quando os denominadores são iguais, a maior fração é a que tem o maior numerador."),
        _img(),
        TextExp("2º CASO: Denominadores diferentes."),
        TextExp("Quando os denominadores são diferentes, o primeiro passo é deixar as frações com o mesmo denominador. Depois, comparamos como no primeiro caso."),
        TextExp("2/5 e 1/5 quem é o maior?"),
        Padding(
          padding: const EdgeInsets.only(top:13.0),
          child:_img2(),
        ),
      ],
    );
  }


  _launchURL() async {
    const url = 'https://www.geogebra.org/m/qxq55u3b';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _img() {
    return Image.asset(
      "assets/images/comp1.png",
      width: 500,
      height: 150,
    );
  }
  _img2() {
    return Image.asset(
      "assets/images/comp2.png",
      width: 500,
      height: 150,
    );
  }


}