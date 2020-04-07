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
            "Menu",
        ),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: _bodyMenu(context),
      drawer: Container(
        color: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green,),
    );
  }

  _bodyMenu(context){
      return Center(
         child: Container(
             child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                _buttons(context),
             ],
           ),
      )
        //_buttonMenu(context, "Atividades" , ()=>  _onClickAbrirAtividades(context, Atividades())),
      );
  }

  _buttons(context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Button("Aulas" , ()=>  _onClickAbrirAtividades(context, Atividades()),Colors.green),
        Button("Atividades" , ()=>  _onClickAbrirAtividades(context, Atividades()),Colors.green),
      ],
    );
  }

  void _onClickAbrirAtividades(BuildContext context, Widget page) async{
      String s = await push(context, page);
  }

}
