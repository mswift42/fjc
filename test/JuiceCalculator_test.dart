import 'package:flutter_test/flutter_test.dart';
import 'package:fjc/JuiceCalculator.dart';

void main() {
  test('Flavour constructors returns correct class' , () {
    var fl = new Flavour("banana", 0.1, pgvg.PG);
    expect(fl.name, "banana");
    expect(fl.base, pgvg.PG);
    expect(fl.strength, 0.1);
    var flpg = new Flavour.withPG("banana", 0.5);
    expect(flpg.base, pgvg.PG);
  });
}