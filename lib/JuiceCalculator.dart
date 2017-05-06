enum pgvg {
  PG,
  VG
}

class JuiceCalculator {
  int vgRatio;
  Nicotine nicotine;
  List<Flavour> flavours;
  Map<pgvg, double> pgvgcontents;
  double targetjuice;
}

class Nicotine {
  double strength;
  pgvg base;
  Nicotine(this.strength, this.base);

}

class Flavour {
  String name;
  double strength;
  pgvg base;

  Flavour(this.name, this.strength, this.base);
  Flavour.withPG(this.name, this.strength);
}