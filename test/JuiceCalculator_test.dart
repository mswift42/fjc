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
}