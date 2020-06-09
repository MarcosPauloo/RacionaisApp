import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projeto_racionais/classes/usuario.dart';

class LoginApi {
  static Future<Usuario> login(String login, String senha) async {
    var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

    Map<String,String> headers = {
      "Content-Type": "application/json"
    };

    final params = {"username": login, "password": senha};

    String s = json.encode(params);

    var response = await http.post(url, body: s, headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    Map mapResponse = json.decode(response.body);

    final user = Usuario.fromJSON(mapResponse);

    return user;
  }
}
