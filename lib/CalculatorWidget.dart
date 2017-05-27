import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        new NicotineWidget(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SliderLabel("PG"),
            new Slider(
              onChanged: (double value) {
                setState(() {
                  ratio = value;
                });
              },
              label: ratio.toString(),
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
    return new Column(children: <Widget>[
      //;new NicotineBaseStrengthWidget(),
      new _NicotineBaseStrengthRadio(),
      new NicotineTargetWidget(),
    ]);
  }
}

class _NicotineBaseStrengthRadio extends StatefulWidget {
  @override
  _NicotineBaseStrengthState createState() => new _NicotineBaseStrengthState();
}

class _NicotineBaseStrengthState extends State<_NicotineBaseStrengthRadio> {
  final List<int> basestrengths = const [18, 20, 50, 72];
  int radiovalue = 72;

  void handleRadioChange(int value) {
    setState(() => radiovalue = value);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Wrap(
        children: basestrengths
            .map((i) => new Column(children: <Widget>[
                  new Text(i.toString()),
                  new Radio(
                      value: i,
                      groupValue: radiovalue,
                      onChanged: handleRadioChange),
                ]))
            .toList());
  }
}

class NicotineTargetWidget extends StatefulWidget {
  @override
  NicotineTargetState createState() => new NicotineTargetState();
}

class NicotineTargetState extends State<NicotineTargetWidget> {
  final TextEditingController niccon = new TextEditingController();
  int nictarget = 0;
  bool open = false;
  Widget _targetText(int target) {
    return new InkWell(
      onTap: () {
        open = !open;
      },
      child: new Container(
        child: new Text(target.toString()),
      ),
    );
  }

  Widget _inputField() {
        return new TextField(
          decoration: new InputDecoration(
            isDense: true,
          ),
          controller: niccon,
          keyboardType: TextInputType.number,
          onSubmitted: null,
          onChanged: null,
        );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Text("Nicotine Target Strength in mg: "),
      new Padding(
        padding: new EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 4,
          vertical: 2.0,
        ),
        child: new TextField(
          decoration: new InputDecoration(
            isDense: true,
          ),
          controller: niccon,
          keyboardType: TextInputType.number,
          onSubmitted: null,
          onChanged: null,
        ),
      ),
    ]);
  }
}

class FlavourWidget extends StatefulWidget {
  FlavourState createState() => new FlavourState();
}

class FlavourState extends State<FlavourWidget> {
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
