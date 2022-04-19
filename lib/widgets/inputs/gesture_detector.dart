import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class GestureDetectorView extends StatelessWidget {
  const GestureDetectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          print('clicou no container');
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
