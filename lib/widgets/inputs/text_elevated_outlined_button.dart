import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TextElevatedOutlinedButtonView extends StatelessWidget {
  const TextElevatedOutlinedButtonView({Key? key}) : super(key: key);

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
          TextButton(onPressed: () {}, child: Text('Enviar')),
          ElevatedButton(onPressed: () {}, child: Text('Enviar')),
          OutlinedButton(onPressed: () {}, child: Text('Enviar')),
        ],
      ),
    );
  }
}
