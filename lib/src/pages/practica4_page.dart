import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Practica4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _appbarGenerate(),
            _listViewGenerate(),
            _listView2Generate()
          ],
        ),
      ),
    );
  }

  Widget _appbarGenerate() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      color: Colors.red[400],
      alignment: Alignment.center,
      child: ExpansionTile(
        title: Text('Practica 4'),
        trailing: Icon(Icons.arrow_drop_down),
        children: [
          Container(
            height: 200,
            child: ClipRRect(
              child: Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/37/8d/b2/378db271f78d2b3789e39edb4f12b24d.jpg'),
                height: 150,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
    );
  }

  Widget _listViewGenerate() {
    return Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (int index) {
          return Column(
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.all(2.5),
                child: ClipRRect(
                  child: Image(
                    height: 100,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/45/6c/67/456c6798f7b3b8a2d94903ac1d5be141.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(2.5),
                child: ClipRRect(
                  child: Image(
                    height: 50,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/45/6c/67/456c6798f7b3b8a2d94903ac1d5be141.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _listView2Generate() {
    return Container(
      child: Column(
        children: List.generate(10, (int index) {
          return Container(
            margin: EdgeInsets.all(2.5),
            child: Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image(
                      height: 130,
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/f4/ce/70/f4ce709950cb7f4969f73ee01b551df5.jpg'),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Image(
                      height: 130,
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/f4/ce/70/f4ce709950cb7f4969f73ee01b551df5.jpg'),
                    ),
                  ),
                ]
              ),
            ),
          );
        })
      ),
    );
  }
}
