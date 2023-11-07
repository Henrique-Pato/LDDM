import 'package:flutter/material.dart';
import 'transacao.dart';
import 'package:intl/intl.dart';

class ListaTrans extends StatefulWidget {
  //const ListaTrans({super.key});
  Function delTrans;

  final List<Transacao> transacoes;
  ListaTrans(this.transacoes, this.delTrans);

  @override
  State<ListaTrans> createState() => _ListaTransState();
}

class _ListaTransState extends State<ListaTrans> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.transacoes.map((trans) {
      return Card(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text(
              "R\$: " + trans.valor.toStringAsFixed(2),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepPurple),
            )),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            trans.descricao,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
            DateFormat('dd-MM-yyyy HH:mm').format(trans.date),
          )
        ]),
        IconButton(
            onPressed: () {
              widget.delTrans(trans.id);
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ))
      ]));
    }).toList()));
  }
}
