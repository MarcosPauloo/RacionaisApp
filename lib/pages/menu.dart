import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/pages/atividades.dart';
import 'package:projeto_racionais/utils/nav.dart';
import 'package:projeto_racionais/widgets/button.dart';

class Menu extends StatelessWidget {
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

      ),
      body: _bodyMenu(context),
      drawer: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.green,
                  
                  ),
               Text("Perfil"),
              ],
            ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> _onClickAbrirAtividades(context, Atividades()), backgroundColor: Colors.green),
    );
  }

  _bodyMenu(context){
     return 
      ListView(
        children: <Widget>[
           _text1(),
           _text2(),
            _img(),
            
        ],
      );
  }

  _buttons(context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Button("Atividades" , ()=>  _onClickAbrirAtividades(context, Atividades()),Colors.green),
      ],
    );
  }

  void _onClickAbrirAtividades(BuildContext context, Widget page) async{
      String s = await push(context, page);
  }

  _img() {
     return Image.asset("assets/images/explicacao1.png", width: 100, height: 100,);
    //return Image.network("https://cdn.pixabay.com/photo/2012/05/07/15/07/penguin-48559_640.png", width: 100, height: 100);
  }
  _text1() {
    return 

      Text(
        "Como montamos uma fração?",
        style: TextStyle(
          fontSize: 23,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.black,
      ),

    );
  }
  _text2(){
    return Text(
        "É bem simples, ela é formada por dois números: o de baixo é o denominador (que é a quantidade que divide a parte inteira) e o de cima é o numerador (que é a parte que selecionamos)",
        style: TextStyle(
          fontSize: 18,
          wordSpacing: 2,
          
        ),
    );
  }

}
