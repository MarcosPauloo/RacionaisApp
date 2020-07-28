import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/menu.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/pageFracao.dart';
import 'package:projeto_racionais/widgets/cardSelecao.dart';

import 'login.dart';

class SelecaoAssuntos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assuntos"),
        backgroundColor: Colors.green,
      ),
      body: _bodySelecaoAssuntos(context),
    );
  }

  _bodySelecaoAssuntos(context) {
    return Center(
      child: _gridSelecao(context),
    );
  }

  Card cardSelecao(context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print("Card tapped");
          Navigator.pop(context);
          OnClickNavigator(context, Menu(), replace: true);
        },
        child: Container(
          child: Text("aaaaaaa"),
          width: 100,
          height: 100,
        ),
      ),
    );
  }


  _gridSelecao(context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      padding: const EdgeInsets.all(20),
       children: <Widget>[
        CardSelecao("Fração","assets/images/ilustracaoFracao.png", PageFracao()),
        CardSelecao("Números Inteiros", "assets/images/ilustracaoNumerosInteiros.png", Atividades()),
        CardSelecao("Decimais finitos", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Dízimas periódicas", "assets/images/ilustracaoDizimasPeriodicas.png", Atividades()),
        CardSelecao("Assunto 5", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Assunto 6", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Assunto 7", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Assunto 8", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Assunto 9", "assets/images/divisaoFracao.png", Atividades()),
      ], 
    );
  }
}
