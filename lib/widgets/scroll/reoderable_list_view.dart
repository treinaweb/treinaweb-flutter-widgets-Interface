import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ReorderableListViewView extends StatefulWidget {
  const ReorderableListViewView({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewView> createState() =>
      _ReorderableListViewViewState();
}

class _ReorderableListViewViewState extends State<ReorderableListViewView> {
  final myItens = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: ReorderableListView(
          children: [
            for (var item in myItens)
              ListTile(
                key: ValueKey(item),
                title: Text('Item $item'),
              )
          ],
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) newIndex--;
              final item = myItens.removeAt(oldIndex);
              myItens.insert(newIndex, item);
            });
          }),
    );
  }
}
