import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class AlertDialogView extends StatelessWidget {
  const AlertDialogView({Key? key}) : super(key: key);

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
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (ctx) {
                  return AlertDialog(
                    title: Text('Aceitar ?'),
                    content: Text('Você deseja aceitar ?'),
                    alignment: Alignment.topLeft,
                    buttonPadding: EdgeInsets.all(20),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Não')),
                      TextButton(onPressed: () {}, child: Text('Sim'))
                    ],
                  );
                });
          },
          child: Text('Sair'),
        ),
      ),
    );
  }
}
