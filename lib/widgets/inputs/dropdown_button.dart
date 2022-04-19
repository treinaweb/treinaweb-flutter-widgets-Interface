import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class DropdownButtonView extends StatefulWidget {
  const DropdownButtonView({Key? key}) : super(key: key);

  @override
  State<DropdownButtonView> createState() => _DropdownButtonViewState();
}

class _DropdownButtonViewState extends State<DropdownButtonView> {
  var value1;
  var value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          DropdownButton(
            value: value1,
            isExpanded: true,
            items: const [
              DropdownMenuItem(
                value: "Ouro",
                child: Text('Ouro'),
              ),
              DropdownMenuItem(
                value: "Prata",
                child: Text('Prata'),
              ),
              DropdownMenuItem(
                value: "Bronze",
                child: Text('Bronze'),
              )
            ],
            onChanged: (value) {
              setState(() {
                value1 = value;
              });
            },
          ),
          DropdownButtonFormField(
            value: value2,
            decoration: InputDecoration(labelText: 'Produto'),
            items: const [
              DropdownMenuItem(
                value: "Ouro",
                child: Text('Ouro'),
              ),
              DropdownMenuItem(
                value: "Prata",
                child: Text('Prata'),
              ),
              DropdownMenuItem(
                value: "Bronze",
                child: Text('Bronze'),
              )
            ],
            onChanged: (value) {
              setState(() {
                value2 = value;
              });
            },
          )
        ],
      ),
    );
  }
}
