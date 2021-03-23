import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textExp.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/WidgetsExpl/textoTopico.dart';
import 'package:url_launcher/url_launcher.dart';


class PageAdSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frações"),
        backgroundColor: Colors.blue,
      ),
      body: _bodyAdSub(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () => _launchURL(),
          backgroundColor: Colors.blue),
    );
  }

  _bodyAdSub(context){
    return ListView(
      children: <Widget>[
        TextTopic("Adição e subtração de fração", first: true,),
        TextExp("Existem dois casos: denominadores iguais e diferentes."),
        TextExp("1º CASO: Denominadores iguais"),
        TextExp("Basta somarmos ou diminuirmos o numerador."),
        _img(),
        
        TextExp("2º CASO: Denominadores diferentes"),
        TextExp("Nesse caso, primeiro precisamos deixar os denominadores iguais. Para isso, existem algumas formas. Vamos mostrar através do mínimo múltiplo comum (m.m.c.)."),
        _img2(),
        TextExp("Fazemos o mmc dos denominadores"),
        _img3(),
        TextExp("mmc(3,4)=2x2x3=12"),
        TextExp("Agora, pegamos cada fração e dividimos o denominador pelo mmc e multiplicamos a resposta pelo numerador"),
        _img4(),
      
      ],
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

  _img() {
    return Image.asset(
      "assets/images/ad1.png",
      width: 500,
      height: 150,
    );
  }
  _img2() {
    return Image.asset(
      "assets/images/ad2.png",
      width: 500,
      height: 150,
    );
  }
  _img3() {
    return Image.asset(
      "assets/images/ad3.png",
      width: 500,
      height: 150,
    );
  }
  _img4() {
    return Image.asset(
      "assets/images/ad4.png",
      width: 500,
      height: 150,
    );
  }

}