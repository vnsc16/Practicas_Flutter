import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: _cuerpo(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cuerpo() {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 20,
        ),
        _cardTipo2(),
        SizedBox(
          height: 20,
        ),
        _cardTipo1(),
        SizedBox(
          height: 20,
        ),
        _cardTipo2(),
        SizedBox(
          height: 20,
        ),
        _cardTipo1(),
        SizedBox(
          height: 20,
        ),
        _cardTipo2(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.album,
              color: Colors.blue[400],
            ),
            title: Text('Título de carta tipo #1'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet'),
          ),
          Row(
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Aceptar')),
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://fondosmil.com/fondo/67343.jpg'),
            placeholder: AssetImage('lib/assets/loader1.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
            height: 200,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Esta es una imagen en 4k'),
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            spreadRadius: 5.0,
            offset: Offset(4.0, 4.0)
          )
        ]
      ),
    );
  }
}
