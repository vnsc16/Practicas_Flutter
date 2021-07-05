import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Practica3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _sliverAppBarGenerator(),
          _sliverElementsGenerator(),
        ],
      ),
    );
  }

  Widget _sliverAppBarGenerator() {
    return SliverAppBar(
      toolbarHeight: 200.0,
      title: ClipRRect(
        child: Image(
          image: NetworkImage(
              'https://i.pinimg.com/originals/37/8d/b2/378db271f78d2b3789e39edb4f12b24d.jpg'),
          height: 150,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
        )
      )
    );
  }

  _sliverElementsGenerator() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 80,
                color: Colors.blue[400],
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                color: Colors.blue[400],
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                color: Colors.blue[400],
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 25,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.black54,
                      ),
                    ),
                    Expanded(
                      flex: 50,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.black54,
                      ),
                    ),
                    Expanded(
                      flex: 25,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ])
    );
  }
}


