import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class DraggableScrollableSheetView extends StatelessWidget {
  const DraggableScrollableSheetView({Key? key}) : super(key: key);

  final text =
      "Aqui na TreinaWeb, nos preocupamos muito com os nossos alunos. Por isso criamos um formulário para que você possa, facilmente, sugerir assuntos para novos cursos.";

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.center,
            child: ClipOval(
              child: Image.network("https://github.com/treinaweb.png"),
            ),
          ),
          Container(
            height: 500,
            child: DraggableScrollableSheet(
                minChildSize: 0.2,
                maxChildSize: 1,
                initialChildSize: 1,
                builder: (ctx, scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    clipBehavior: Clip.none,
                    child: Column(
                      children: [
                        Image.network("https://github.com/arielsardinha.png"),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                        Text(text),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
