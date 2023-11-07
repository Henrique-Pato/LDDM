import 'package:flutter/material.dart';
import 'tela2.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(),
    initialRoute: "/",
    routes: {"/segundaTela": (context) => Tela2("Duck")},
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Tela 2"),
          onPressed: () {
            Navigator.pushNamed(context, "/segundaTela");
          },
        ),
      ),
    );
  }
}
