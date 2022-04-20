import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({Key? key}) : super(key: key);

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  var isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: ListTile(
        title: Text('Editar Perfil'),
        subtitle: Text('#54'),
        trailing: Icon(Icons.access_time),
        leading: Icon(Icons.person),
        onLongPress: () {
          setState(() {
            isSelect = !isSelect;
          });
        },
        dense: true,
        selectedColor: Colors.red,
        selected: isSelect,
      ),
    );
  }
}
