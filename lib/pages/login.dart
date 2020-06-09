import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/Aluno';
import 'package:projeto_racionais/classes/LoginApi.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:projeto_racionais/classes/usuario.dart';
import 'package:projeto_racionais/pages/menu.dart';
import 'package:projeto_racionais/widgets/appText.dart';
import 'package:projeto_racionais/widgets/button.dart';


class Login extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _controladorLogin = TextEditingController();

  final TextEditingController _controladorSenha = TextEditingController();

  final _focusSenha = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.green,
        ),
        body: _bodyLogin(context));
  }

  _bodyLogin(BuildContext context) {
    return Form(
      key: _formkey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            AppText(
              "Login",
              "Digite o login",
              _controladorLogin,
              validator: _validateLogin,
              textInputAction: TextInputAction.next,
              nextFocus: _focusSenha,
            ),
            SizedBox(
              height: 20,
            ),
            AppText(
              "Senha",
              "Digite a senha",
              _controladorSenha,
              password: true,
              validator: _validateSenha,
              textInputAction: TextInputAction.next,
              focusNode: _focusSenha,
            ),
            SizedBox(
              height: 20,
            ),
            buildContainerButton(
              context,
            ),
          ],
        ),
      ),
    );
  }


  Container buildContainerButton(BuildContext context) {
    return Container(
        height: 40,
        child: Button(
          "Login",
          Colors.green,
          onPressed: () => _onClickNavigator(context, Menu()),
        ));
  }

  _onClickNavigator(BuildContext context, Widget page) async{
    if (!_formkey.currentState.validate()) {
      return;
    }
    
    String login = _controladorLogin.text;
    String senha = _controladorSenha.text;
    print("Login: $login, Senha: $senha");
    
    //OnClickNavigator(context, page, replace: true);
    Usuario user = await LoginApi.login(login, senha);

    if(user!=null){
      print(">>$user");
      OnClickNavigator(context, page, replace: true);
    }
    else{
      print("Login Incorreto");
    }
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    return null;
  }
}
