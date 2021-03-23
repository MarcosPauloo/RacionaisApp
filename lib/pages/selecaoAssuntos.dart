import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/menu.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/pageFracao.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/pageSimplificacao.dart';
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
        CardSelecao("Como montamos uma fração?","assets/images/ilustracaoFracao.png", PageFracao()),
        CardSelecao("Simplificação de frações", "assets/images/ilustracaoNumerosInteiros.png", PageSimpli()),
        CardSelecao("Qual fração é a maior?", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Adição e subtração de frações", "assets/images/ilustracaoDizimasPeriodicas.png", Atividades()),
        CardSelecao("Multiplicação de frações", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Divisão de frações", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Frações para números decimais", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Porcentagem para fração", "assets/images/divisaoFracao.png", Atividades()),
        CardSelecao("Número decimal para fração", "assets/images/divisaoFracao.png", Atividades()),
      ], 
    );
  }
}
