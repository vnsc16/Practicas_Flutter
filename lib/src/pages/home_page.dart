import 'package:curso_flutter/src/pages/alert_page.dart';
import 'package:curso_flutter/src/providers/menu_provider.dart';
import 'package:curso_flutter/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    data!.forEach((i) {
      final widgetTemp = ListTile(
        title: Text(i["texto"]),
        leading: getIcon(i['icon']),
        trailing: Icon(
          Icons.arrow_drop_down_circle,
          color: Colors.blue[400],
        ),
        onTap: () {
          final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.pushNamed(context, i['ruta']);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
