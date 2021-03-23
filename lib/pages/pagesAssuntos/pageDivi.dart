import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PageDivi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyDivi(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyDivi(context) {
    return ListView(children: <Widget>[
      TextTopic("Divisão de frações",first:true),
      TextExp("Multiplicamos a primeira fração pelo inverso da segunda."),
      _img(),
    ]);
  }

  _img() {
    return Image.asset(
      "assets/images/div1.png",
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
