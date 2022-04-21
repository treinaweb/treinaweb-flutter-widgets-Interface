import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ListWheellScrollViewView extends StatelessWidget {
  const ListWheellScrollViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: ListWheelScrollView(
        itemExtent: 42,
        useMagnifier: true,
        magnification: 2,
        diameterRatio: 0.85,
        perspective: 0.003,
        children: List.generate(
          100,
          (index) => Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
