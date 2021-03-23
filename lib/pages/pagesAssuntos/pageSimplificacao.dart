import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';

class PageSimpli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodySimpliFrac(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodySimpliFrac(context) {
    return ListView(
      children: <Widget>[
        TextTopic(
          "Simplificação de frações",
          first: true,
        ),
        TextExp(
            "Uma fração pode ser simplificada quando encontramos um número que divide, simultaneamente, o numerador e o denominador. Lembre-se que todas elas representam o mesmo número‼"),
        Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 170,
                height: 150,
                child: _img(),
              ),
              Container(
                width: 200,
                height: 150,
                child: _img2(),
              ),
              //Expanded(child: _img()),
              //Expanded(child: _img2()),
              //_img(),
            ],
          ),
        ),
        TextExp("Essas frações são chamadas de FRAÇÕES EQUIVALENTES"),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://www.geogebra.org/m/urjutxvw';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _img() {
    return Image.asset(
      "assets/images/simple.png",
      width: 500,
      height: 150,
    );
  }

  _img2() {
    return Image.asset(
      "assets/images/simple2.png",
      width: 500,
      height: 150,
    );
  }
}
