import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/practica2_page.dart';
import 'package:curso_flutter/src/pages/alert_page.dart';
import 'routes/routes.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Practica2Page(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamandose: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}
