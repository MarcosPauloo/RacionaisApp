import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dog{
  String nome;
  String foto;

  Dog(this.nome,this.foto);
}

class PageTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
      ),
      body: _bodyPageTest2(context),
    );
  }

  _bodyPageTest2(context) {
    List<Dog> dogs = [
      Dog("Test1", "assets/images/test.png"),
      Dog("Test2", "assets/images/test.png"),
      Dog("Test3", "assets/images/test.png"),
      Dog("Test4", "assets/images/test.png"),
    ];

    return ListView.builder(      //nós utilizamos esse método para quando recebermos objetos que ainda nao são widgets, 
                                  //então o mesmo faz a transformação para widgets
      itemCount: dogs.length,
      itemExtent: 350,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];
        return _img(dog.foto);
      });
  }

  _img(caminho) {
    return Image.asset(caminho);
  }
}
