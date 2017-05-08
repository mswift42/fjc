import 'package:flutter_test/flutter_test.dart';
import 'package:fjc/JuiceCalculator.dart';

void main() {
  test('Flavour constructors returns correct class' , () {
    var fl = new Flavour("banana", 0.1, pgvg.VG);
    expect(fl.name, "banana");
    expect(fl.base, pgvg.VG);
    expect(fl.strength, 0.1);
    var flpg = new Flavour.withPG("banana", 0.5);
    expect(flpg.base, pgvg.PG);
  });
  test('Nicotine constructor returns Nicotine object',() {
    var ni = new Nicotine(72, 3, pgvg.PG);
    expect(ni.basestrength, 72);
    expect(ni.base, pgvg.PG);
    expect(ni.targetstrength, 3);
  });
  test('nicotinevolume method returns a map of pgvg/double values' , () {
    var ni = new Nicotine(72, 3, pgvg.PG);
    var nv = ni.nicotinevolume(50.0);
    expect(nv[pgvg.PG].floor(), 2);
    var nv1 = ni.nicotinevolume(30.0);
    expect(nv1[pgvg.PG], 1.25);
  });
}