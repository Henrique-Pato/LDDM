import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: MyWidget()));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  buscaCep() async {
    String url = "https://viacep.com.br/ws/01001000/json/";
    http.Response resposta;
    resposta = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(resposta.body);
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String cidade = retorno["localidade"];
    String estado = retorno["uf"];

    print(logradouro);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: buscaCep, child: Text("OK"));
  }
}
