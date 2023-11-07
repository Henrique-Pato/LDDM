import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  String parametro;
  Tela2(this.parametro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela 2"),
        ),
        body: Text(parametro));
  }
}
