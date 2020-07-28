import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/menu.dart';

class CardSelecao extends StatelessWidget {
  String text;
  String assunto;
  String enderecoImagem;
  Widget pageAssunto;

  CardSelecao(this.text, this.enderecoImagem, this.pageAssunto);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print("Card tapped");
          //Navigator.pop(context);
          OnClickNavigator(context, pageAssunto);
        },
        child: Container(
          child: Container(
              child: Stack(
            children: <Widget>[
              _img(enderecoImagem),
              Text(text),
            ],
          )),
          width: 100,
          height: 100,
        ),
      ),
    );
  }
   _img(endereco) {
    return Image.asset(
      endereco,
      width: 500,
      height: 100,
    );
    
  }
  /*_stackBase() {
    return Stack(
      children: <Widget>[
        _img(),
        Positioned(
          bottom: 15.0,
          left: 20.0,
          child: Text(
            "aaaaaa.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 280.0,
          child: Button(
            "23",
            Colors.green,
            onPressed: () {
              print("ok");
            },
          ),
        ),
      ],
    );
  }*/
}
