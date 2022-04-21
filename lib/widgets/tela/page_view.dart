import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class PageViewView extends StatelessWidget {
  const PageViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [Page1(), Page2(), Page3()],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      alignment: Alignment.center,
      child: Text('Pagina 1', style: TextStyle(fontSize: 35)),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      alignment: Alignment.center,
      child: Text('Pagina 2', style: TextStyle(fontSize: 35)),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text('Pagina 3', style: TextStyle(fontSize: 35)),
    );
  }
}
