import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final respp = await rootBundle.loadString('lib/data/menu-opts.json');
    Map dataMap = json.decode(respp);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new MenuProvider();
