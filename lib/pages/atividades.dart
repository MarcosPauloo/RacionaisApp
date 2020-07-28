import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_racionais/widgets/button.dart';
import 'package:projeto_racionais/pages/pageTest.dart';
import 'package:projeto_racionais/classes/OnClickNavigator.dart';
import 'package:url_launcher/url_launcher.dart';

class Atividades extends StatefulWidget {
  @override
  _AtividadesState createState() => _AtividadesState();
}

class _AtividadesState extends State<Atividades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Atividades",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: _bodyActivity(context),
    );
  }

  _bodyActivity(context) {
    return ListView(
      children: <Widget>[
        Container(child: _text()),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Button(
            "text",
            Colors.green,
            onPressed: () => _launchURL(),
          ),
        ),

        //_img(),
      ],
    );
  }

  _text() {
    return Padding(
       padding: const EdgeInsets.only(top: 15.0, left: 12.0),
      child: Text(
        "Abrir atividades no GeoGebra\n\nAcerta tudo em!!!",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  _showDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              Container(
                child: Text("aa"),
              ),
            ],
            title: Text("text"),
          );
        });
  }

  _launchURL() async {
    const url = 'https://www.geogebra.org/m/vrtewe9c';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _alertDialogTest(context) {
    AlertDialog(
      title: Text('data'),
      content: SingleChildScrollView(
          child: ListBody(
        children: <Widget>[
          Text("aaaa"),
          Text("top"),
        ],
      )),
    );
  }
}
