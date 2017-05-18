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
  final String label;

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
  int radiovalue;
  List<int> basestrengths = const [0, 18, 50, 72];

  void handleRadioChange(int value) {
    setState(() => radiovalue = value);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child:
        new Row(
          children: <Widget>[
            new Radio<int>(
              value: 0,
              groupValue: radiovalue,
              onChanged: handleRadioChange,
            ),
            new Radio<int>(
              value: 1,
              groupValue: radiovalue,
              onChanged: handleRadioChange,
            ),
          ],
        ),
    );
  }
}

class _RadioWidget extends StatelessWidget {
  final ValueChanged onChange;
  final String label;
  final int radiovalue;
  final int value;

  _RadioWidget(this.onChange, this.label, this.radiovalue, this.value);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text(label),
        new Radio(
          value: value,
          groupValue: radiovalue,
          onChanged: onChange,
        )
      ],
    );
  }
}


final ThemeData _kTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.teal,
  accentColor: Colors.redAccent,
);
