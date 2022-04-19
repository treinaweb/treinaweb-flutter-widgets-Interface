import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SwitchListTileViw extends StatefulWidget {
  const SwitchListTileViw({Key? key}) : super(key: key);

  @override
  State<SwitchListTileViw> createState() => _SwitchListTileViwState();
}

class _SwitchListTileViwState extends State<SwitchListTileViw> {
  var darMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: SwitchListTile(
          selected: darMode,
          value: darMode,
          title: Text('Dark Mode'),
          subtitle: Text('Ativar ou desativar dark mode'),
          secondary: Icon(Icons.dark_mode),
          onChanged: (value) {
            setState(() {
              darMode = value;
            });
          }),
    );
  }
}
