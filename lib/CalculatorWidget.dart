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
    return new Material(
      child: new Column(children: <Widget>[
        new _PGVGSliderWidget(),
      ]),
    );
  }
}

class _PGVGSliderWidget extends StatefulWidget {
  @override
  _PGVGSliderState createState() => new _PGVGSliderState();
}

class _PGVGSliderState extends State<_PGVGSliderWidget> {
  double ratio = 0.5;
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 2.0,
      ),
      child: new Row(children: <Widget>[
        new Slider(
          onChanged: (double value) {
            setState(() {
              ratio = value;
            });
          },
          label: "PG/VG Ratio",
          value: ratio,
          max: 100.00,
          min: 0.0,
          divisions: 20,
        ),
      ]),
    );
  }
}

final ThemeData _kTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.teal,
  accentColor: Colors.redAccent,
);
