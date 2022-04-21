import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ScrollBarView extends StatelessWidget {
  const ScrollBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Scrollbar(
          isAlwaysShown: true,
          interactive: true,
          thickness: 12,
          trackVisibility: true,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  100,
                  (index) => Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        color: Colors.black,
                      )),
            ),
          )),
    );
  }
}
