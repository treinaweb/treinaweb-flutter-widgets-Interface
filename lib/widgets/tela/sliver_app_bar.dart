import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SliverAppBarView extends StatelessWidget {
  const SliverAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220.0,
            pinned: true,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://github.com/treinaweb.png",
                  fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, i) {
                return Container(
                  height: 50,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text("Item $i"),
                );
              },
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
