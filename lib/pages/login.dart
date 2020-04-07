import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/Aluno';
import 'package:projeto_racionais/pages/menu.dart';
class Login extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  final TextEditingController _controladorCPF = TextEditingController();
  final TextEditingController _controladorLogin = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: TextField(
                controller: _controladorLogin,
                decoration: InputDecoration(
                    labelText: 'Login'
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: TextField(
                controller: _controladorSenha,
                decoration: InputDecoration(
                    labelText: 'Senha'
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                  _onClickNavigator(context, Menu());
                //Navigator.pop((context)); -- volta para a tela anterior
              },
            )
          ],
        ),
      )
    );
  }
  void _onClickNavigator(BuildContext context, Widget page) {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }
}