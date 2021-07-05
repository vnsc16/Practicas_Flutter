import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Practica5Page extends StatefulWidget {
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<Practica5Page> {
  int intensityValue = 0, depthValue = 0, surfaceIntensityValue = 0;
  NetworkImage imagenVariable = NetworkImage(
      'https://i.pinimg.com/originals/37/8d/b2/378db271f78d2b3789e39edb4f12b24d.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 5'),
        centerTitle: true,
      ),
      floatingActionButton: _floatingButtomNeumorphic(),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[_botonImageNeuporhic(), _slidersGenerator()],
        ),
      ),
    );
  }

  Widget _botonImageNeuporhic() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: NeumorphicButton(
          onPressed: () {},
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.circle(),
              intensity: intensityValue * 0.1,
              depth: depthValue * 1,
              surfaceIntensity: surfaceIntensityValue * 0.1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(height: 210, image: imagenVariable),
          )),
    );
  }

  Widget _floatingButtomNeumorphic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NeumorphicFloatingActionButton(
            child: Icon(Icons.replay_outlined),
            onPressed: () {
              setState(() {
                intensityValue = 5;
                depthValue = 0;
                surfaceIntensityValue = 5;
              });
            }),
        NeumorphicFloatingActionButton(
            child: Icon(Icons.keyboard_arrow_right_sharp),
            onPressed: () {
              setState(() {
                imagenVariable = NetworkImage('https://i.pinimg.com/originals/f4/ce/70/f4ce709950cb7f4969f73ee01b551df5.jpg');
              });
            }),
      ],
    );
  }

  Widget _slidersGenerator() {
    return Column(
      children: <Widget>[
        Container(
          // color: Colors.red,
          alignment: Alignment.centerLeft,
          child: Text('Intensity: $intensityValue'),
          margin: EdgeInsets.only(
            left: 30,
            top: 30,
            bottom: 10,
          ),
        ),
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: NeumorphicSlider(
            style: SliderStyle(depth: -10),
            height: 10,
            value: intensityValue * 1,
            onChanged: (value) {
              setState(() {
                intensityValue = value.round();
              });
            },
          ),
        ),
        Container(
          // color: Colors.red,
          alignment: Alignment.centerLeft,
          child: Text('Depth: $depthValue'),
          margin: EdgeInsets.only(
            left: 30,
            top: 20,
            bottom: 10,
          ),
        ),
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: NeumorphicSlider(
            style: SliderStyle(depth: -10),
            height: 10,
            value: depthValue * 1,
            min: -20,
            max: 20,
            onChanged: (value) {
              setState(() {
                depthValue = value.round();
              });
            },
          ),
        ),
        Container(
          // color: Colors.red,
          alignment: Alignment.centerLeft,
          child: Text('SurfaceIntensity: $surfaceIntensityValue'),
          margin: EdgeInsets.only(
            left: 30,
            top: 20,
            bottom: 10,
          ),
        ),
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: NeumorphicSlider(
            style: SliderStyle(depth: -10),
            height: 10,
            value: surfaceIntensityValue * 1,
            onChanged: (value) {
              setState(() {
                surfaceIntensityValue = value.round();
              });
            },
          ),
        ),
      ],
    );
  }
}
