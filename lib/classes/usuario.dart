class Usuario {
  String login;
  String nome;
  String email;
  String token;

  List<String> roles;

 Usuario.fromJSON(Map<String,dynamic> map):  //.fromJSON é um nome que eu estou dando ao construtor
   login = map["login"],
   nome = map["nome"],
   email = map["email"],
   token = map["token"],
   roles =map["roles"]!=null ? map["roles"].map<String>((role) => role.toString()).toList():null;
   
     @override
    String toString() {
      return "Usuario Login: $login, nome: $nome, email: $email, token:$token, roles:$roles";
    }
   
}