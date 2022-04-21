import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class Item {
  String value, headValue;
  bool isExpanded;
  Item({required this.headValue, required this.value, this.isExpanded = false});
}

class ExpansionPanelView extends StatefulWidget {
  const ExpansionPanelView({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelView> createState() => _ExpansionPanelViewState();
}

class _ExpansionPanelViewState extends State<ExpansionPanelView> {
  final List<Item> _data = [
    Item(headValue: 'Painel 1', value: 'Este é um item com número 1'),
    Item(headValue: 'Painel 2', value: 'Este é um item com número 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context),
          ),
        ),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                isExpanded: _data[0].isExpanded,
                headerBuilder: (ctx, isExpanded) {
                  return ListTile(
                    title: Text(_data[0].headValue),
                  );
                },
                body: ListTile(
                  title: Text(_data[0].value),
                ),
              ),
              ExpansionPanel(
                isExpanded: _data[1].isExpanded,
                headerBuilder: (ctx, isExpanded) {
                  return ListTile(
                    title: Text(_data[1].headValue),
                  );
                },
                body: ListTile(
                  title: Text(_data[1].value),
                ),
              )
            ],
          ),
        ));
  }
}
