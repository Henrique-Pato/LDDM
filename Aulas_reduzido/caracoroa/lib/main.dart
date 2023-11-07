import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Jogo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  String imageApp = "imagens/opcao.png";
  String mensagem = "Escolha uma das opções abaixo";

  void opcaoSelecionada(String entrada) {
    var opcoes = ["cara", "coroa"];
    int num = Random().nextInt(2);
    String escolhaApp = opcoes[num];

    switch (escolhaApp) {
      case "cara":
        setState(() {
          imageApp = "imagens/cara260.png";
        });
        break;
      case "coroa":
        setState(() {
          imageApp = "imagens/coroa260.png";
        });
        break;
    }
    if (entrada == escolhaApp) {
      setState(() {
        mensagem = "Venceu";
      });
    } else {
      setState(() {
        mensagem = "Perdeu";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cara ou Coroa"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text("Escolha do computador"),
          ),
          Image.asset(
            imageApp,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(mensagem),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset(
                  "imagens/cara260.png",
                  height: 100,
                ),
                onTap: () => opcaoSelecionada("cara"),
              ),
              GestureDetector(
                child: Image.asset(
                  "imagens/coroa260.png",
                  height: 100,
                ),
                onTap: () => opcaoSelecionada("coroa"),
              ),
            ],
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
