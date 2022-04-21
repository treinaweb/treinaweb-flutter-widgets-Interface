import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({Key? key}) : super(key: key);

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  var sort = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.red),
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
              label: Text('Nome'),
              tooltip: 'Este é primeiro nome',
              numeric: true,
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
              }),
          const DataColumn(
            label: Text('Idade'),
          ),
        ],
        rows: [
          DataRow(
            selected: true,
            onSelectChanged: (value) {},
            cells: const [
              DataCell(
                Text('Ariel'),
              ),
              DataCell(
                Text('29'),
              ),
            ],
          ),
          DataRow(
            selected: false,
            onSelectChanged: (value) {},
            cells: const [
              DataCell(
                Text('Paulo'),
              ),
              DataCell(
                Text('32'),
              ),
            ],
          ),
          DataRow(
            color: MaterialStateProperty.all(Colors.grey),
            cells: const [
              DataCell(
                Text('Elton'),
              ),
              DataCell(
                Text('65'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
