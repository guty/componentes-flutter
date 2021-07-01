import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  // ignore: empty_constructor_bodies
  _MenuProvider() {}

  Future<List<dynamic>> cargarData() async {
    final String jsonOpciones =
        await rootBundle.loadString('data/menu_opts.json');

    final Map<String, dynamic> opcionesMap =
        json.decode(jsonOpciones) as Map<String, dynamic>;
    return opciones = opcionesMap['rutas'] as List<dynamic>;
  }
}

final menuProvider = _MenuProvider();
