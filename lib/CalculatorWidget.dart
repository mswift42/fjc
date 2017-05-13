import 'package:flutter/material.dart';
import 'package:fjc/JuiceCalculator.dart';

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
        new PGVGSliderWidget(),
      ]),
    );
  }
}

class PGVGSliderWidget extends StatefulWidget {
  @override
  _PGVGSliderState createState() => new _PGVGSliderState();
}

class _PGVGSliderState extends State<PGVGSliderWidget> {
  double ratio = 0.5;
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 2.0,
      ),
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new SliderLabel("PG"),
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
            new SliderLabel("VG"),
          ]),
    );
  }
}

class SliderLabel extends StatelessWidget {
  String label;

  SliderLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return new Text(label);
  }
}

class NicotineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[

      ]
    );
  }
}

class NicotineBaseStrengthWidget extends StatefulWidget {
  @override
  _NicotineBaseStrengthState createState() => new _NicotineBaseStrengthState();
}

class _NicotineBaseStrengthState extends State<NicotineBaseStrengthWidget> {

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
