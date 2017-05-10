import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: _kTheme,
      home: new CalculatorHome(),
    );
  }
}

class CalculatorHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("E-Juice Calculator"),
      ),
      body: new _CalculatorBody(),
    );
  }
}

class _CalculatorBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material();
  }
}

class _PGVGSliderWidget extends StatefulWidget {
  final double ratio;

  _PGVGSliderWidget(this.ratio);
  @override
  _PGVGSliderState createState() => new _PGVGSliderState(ratio);
}

class _PGVGSliderState extends State<_PGVGSliderWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}


final ThemeData _kTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.teal,
  accentColor: Colors.redAccent,
);