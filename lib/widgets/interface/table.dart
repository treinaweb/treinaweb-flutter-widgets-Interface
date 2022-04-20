import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TableView extends StatelessWidget {
  const TableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Table(
        border: TableBorder.all(),
        defaultColumnWidth: FractionColumnWidth(.25),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(decoration: BoxDecoration(color: Colors.amber), children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            )
          ]),
          TableRow(children: [
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
            )
          ])
        ],
      ),
    );
  }
}
