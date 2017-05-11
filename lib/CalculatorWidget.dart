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
        new _PGVGSliderWidget(0.5),
      ]),
    );
  }
}

class _PGVGSliderWidget extends StatefulWidget {
  final double ratio;

  _PGVGSliderWidget(this.ratio);
  @override
  _PGVGSliderState createState() => new _PGVGSliderState(ratio);
}

class _PGVGSliderState extends State<_PGVGSliderWidget> {
  final double ratio;
  _PGVGSliderState(this.ratio);
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 2.0,
      ),
      child: new Row(children: <Widget>[
        new Slider(
          onChanged: (ratio) => print(ratio),
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
