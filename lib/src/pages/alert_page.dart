import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: _cupero(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cupero(BuildContext context) {
    return Column(children: <Widget>[
      ElevatedButton(
        child: Text('Press on me!'),
        onPressed: () {
          _mostrarAlert(context);
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blue.shade400),
        ),
      ),
    ]);
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          title: Text('Mensaje de alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: ()=>Navigator.of(context).pop(),
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: ()=>Navigator.of(context).pop(),
              child: Text('Ok'),
            ),
          ],
        );
      }
    );
  }
}
