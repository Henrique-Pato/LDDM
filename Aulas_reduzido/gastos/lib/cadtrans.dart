import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadTrans extends StatelessWidget {
  //const CadTrans({super.key});
  Function addTrans;
  CadTrans(this.addTrans);
  TextEditingController desc = TextEditingController();
  TextEditingController val = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Descrição"),
              controller: desc,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
              controller: val,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  addTrans(desc.text, double.parse(val.text));
                },
                child: Text("Incluir gasto"))
          ],
        ));
  }
}
