import 'package:flutter/material.dart';
import 'cadtrans.dart';
import 'listatrans.dart';
import 'transacao.dart';

class ControllerTrans extends StatefulWidget {
  //const ControllerTrans({super.key});

  @override
  State<ControllerTrans> createState() => _ControllerTransState();
}

class _ControllerTransState extends State<ControllerTrans> {
  final List<Transacao> transacoes = [
    Transacao(1, "Café", 5.00, DateTime.now()),
    Transacao(2, "Pão de queijo", 2.00, DateTime.now())
  ];

  void addTrans(String txtDesc, double txtVal) {
    final trans =
        Transacao(transacoes.length + 1, txtDesc, txtVal, DateTime.now());

    setState(() {
      transacoes.add(trans);
    });
  }

  void delTrans(int id) {
    setState(() {
      transacoes.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CadTrans(addTrans), ListaTrans(transacoes, delTrans)],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
