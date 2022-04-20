import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Tem certeza que deseja sair'),
                action: SnackBarAction(
                    label: 'Sair', onPressed: () {}, textColor: Colors.white),
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(20),
                
              ),
            );
          },
          child: Text('Sair'),
        ),
      ),
    );
  }
}
