import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_racionais/classes/Aluno';

class Cadastro extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  final TextEditingController _controladorCPF = TextEditingController();
  final TextEditingController _controladorLogin = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: <Widget>[

              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:16.0),

                child:TextField(
                  controller: _controladorIdade,
                  decoration: InputDecoration(
                    labelText: 'Idade',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:16.0),
                child: TextField(
                  controller: _controladorCPF,
                  decoration: InputDecoration(
                      labelText: 'CPF'
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
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
                child: Text("Cadastrar"),
                onPressed: () {
                  _clickCadastro(context);
                },
              )
            ],
          ),
        )
    );
  }

  void _clickCadastro(context) {
     final String nome = _controladorNome.text;
    final int idade = int.tryParse(_controladorIdade.text);
    final String cpf = _controladorCPF.text;
    final String login = _controladorLogin.text;
    final String senha = _controladorSenha.text;

    final Aluno alunoNovo = Aluno(nome,idade,cpf, login, senha);
    print(alunoNovo);

    Navigator.pop(context, "deu certo");
  }
}