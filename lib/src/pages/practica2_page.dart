import 'package:flutter/material.dart';

class Practica2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica2'),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      ),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
              child: Center(
                child: Image(
                  image: NetworkImage('https://i.pinimg.com/originals/f4/ce/70/f4ce709950cb7f4969f73ee01b551df5.jpg'),
                ),
              ),
            ),
            _rowGenerate(context)
          ],
        ),
      ),
    );
  }

  Widget _rowGenerate(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (int index) {
          return Container(
            margin: EdgeInsets.all(2.5),
            child: ClipRRect(
              child: Image(
                height: MediaQuery.of(context).size.height * 0.25,
                image: NetworkImage('https://i.pinimg.com/originals/45/6c/67/456c6798f7b3b8a2d94903ac1d5be141.jpg'),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          );
        }),
      ),
    );
  }
}
