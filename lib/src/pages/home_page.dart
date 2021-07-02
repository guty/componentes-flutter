import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/utils/icons_string_util.dart';
import 'package:componentes_flutter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.asMap().forEach((index, value) {
      final tempWidget = ListTile(
        title: Text(data[index]['texto'].toString()),
        leading: getIcon(data[index]['icon'].toString()),
        trailing: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.blue.shade600,
        ),
        onTap: () {
          Navigator.pushNamed(context, data[index]['ruta'].toString());
        },
      );

      opciones.add(tempWidget);
    });

    return opciones;
  }
}
