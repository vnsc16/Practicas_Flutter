import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Practica1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 1'),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert)
        ],
        leading: Icon(Icons.person_pin),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    List<Widget> lista = [];
    for (int i = 0; i < 20; i++) {
      lista.add(Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[400],
        ),
        height: 60,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            ClipRRect(
              child: Image(
                height: 50,
                image: NetworkImage('https://ae01.alicdn.com/kf/HTB1jcb9amBYBeNjy0Feq6znmFXac/Bonito-elefante-peque-o-7-Color-L-mpara-3D-luces-LED-de-noche-visuales-para-ni.jpg_Q90.jpg_.webp'),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Text('Elefante azul con luces led'),
            ),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward_ios_sharp),
            SizedBox(width: 10,),
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Column(
        children: lista,
      ),
    );
  }
}
