import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TableBarView extends StatelessWidget {
  const TableBarView({Key? key}) : super(key: key);
  final dog =
      "https://th.bing.com/th/id/R.ae8080d8a989b691cd593c7674d239ab?rik=fh4xx1UbuqmG%2fA&pid=ImgRaw&r=0";
  final cat = "https://thumbs.dreamstime.com/b/gato-bonito-2507099.jpg";
  final rabbit =
      "https://www.vets4pets.com/siteassets/species/rabbit/bunny-in-field.jpg?w=585&scale=down";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context),
          ),
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Cat',
              ),
              Tab(
                text: 'Dog',
              ),
              Tab(
                text: 'Rabbit',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Image.network(cat),
            Image.network(dog),
            Image.network(rabbit),
          ],
        ),
      ),
    );
  }
}
