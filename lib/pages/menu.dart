import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/drawerlist.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/pages/pagesAssuntos/pageFracao.dart';
import 'package:projeto_racionais/pages/selecaoAssuntos.dart';
import 'package:projeto_racionais/utils/nav.dart';
import 'package:projeto_racionais/widgets/button.dart';
import 'package:projeto_racionais/widgets/cardSelecao.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _listView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Racionais",
          style: TextStyle(fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print("home");
              setState(() {
                _listView = true;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              print("grid");
              setState(() {
                _listView = false;
              });
            },
          ),
        ],
      ),
      body: _bodyMenu(context),
      drawer: DrawerList(),
    );
  }

  _bodyMenu(context) {
    if (_listView) {
      return listViewList();
    } else {
      return listViewGrid();
    }
  }

  ListView listViewList() {
    return ListView(
      children: <Widget>[
        Container(child: _text1()),
        Container(
            child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: _text2(),
        )),
        _img(),
        Container(child: _text1List()),
        Container(
            child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: _text2List(),
        )),
        /*RichText(
          text: TextSpan(
            text: 'Hello',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'bold',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'world!'),
            ],
          ),
        )*/
      ],
    );
  }

  listViewGrid() {
    return Center(
      child: _gridSelecao(context),
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

  _textTest() {
    return Material(); //https://api.flutter.dev/flutter/material/Material-class.html
    //https://medium.com/collabcode/flutter-construindo-uma-linda-aplicação-de-notícias-parte-1-f0cbeecb7ab
  }

  _buttons(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Button(
          "Atividades",
          Colors.green,
          onPressed: () => _onClickAbrirAtividades(context, Atividades()),
        ),
      ],
    );
  }

  void _onClickAbrirAtividades(BuildContext context, Widget page) async {
    String s = await push(context, page);
  }

  _img() {
    return Image.asset(
      "assets/images/representacaoRacionais.png",
      width: 300,
      height: 200,
    );
  }

  _img2() {
    return Image.asset(
      "assets/images/divisaoFracao.png",
      width: 500,
      height: 150,
    );
  }

  _text1() {
    return Center(
      child: Text(
        "O que são os numeros racionais?",
        style: TextStyle(
          fontSize: 23,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.black,
        ),
      ),
    );
  }

  _text2() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Center(
        child: Text(
          "É um dos maiores grupos encontrados na matemática, envolvendo os numeros inteiros, naturais. De forma resumida, eles são todos os números que podem ser escrito em forma de fração. Eles podem estar representados por uma forma decimal finita ou infinita, e dízimas periódicas.",
          style: TextStyle(
            fontSize: 18,
            wordSpacing: 2,
          ),
        ),
      ),
    );
  }

  _text1List() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Exemplos:",
        style: TextStyle(
          fontSize: 23,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.black,
        ),
      ),
    );
  }

  _text2List() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Center(
        child: Text(
          "0,3 = 3/10\n\n-7=-7/1\n\n0,12=12/100",
          style: TextStyle(
            fontSize: 18,
            wordSpacing: 2,
          ),
        ),
      ),
    );
  }

  _card() {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print("Card tapped");
          },
          child: Container(
            child: Text("aaaaaaa"),
            width: 300,
            height: 100,
          ),
        ),
      ),
    );
  }

  _richText() {
    return RichText(
      text: TextSpan(
        text: 'Hello',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: 'world!'),
        ],
      ),
    );
  }
}
