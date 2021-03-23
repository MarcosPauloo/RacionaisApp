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
      //color: Colors.green,
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.blue.withOpacity(0.5),
                    
                  ),
                  child: new Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
}
