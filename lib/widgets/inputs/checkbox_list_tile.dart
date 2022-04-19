import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class CheckboxListTileView extends StatefulWidget {
  const CheckboxListTileView({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileView> createState() => _CheckboxListTileViewState();
}

class _CheckboxListTileViewState extends State<CheckboxListTileView> {
  var isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: CheckboxListTile(
          value: isCheck,
          selected: isCheck,
          title: Text('Notificação'),
          secondary: Icon(Icons.notifications),
          subtitle: Text('Ativar ou desativar notificação'),
          onChanged: (value) {
            if (value != null) {
              setState(() {
                isCheck = value;
              });
            }
          }),
    );
  }
}
