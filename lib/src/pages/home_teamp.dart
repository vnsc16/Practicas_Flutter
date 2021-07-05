import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text('Mi item es: ' + e),
            subtitle: Text('Click on me'),
            leading: Icon(Icons.insert_emoticon_outlined),
            trailing: Icon(Icons.arrow_drop_down_circle_rounded),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
