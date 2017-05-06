enum pgvg {
  PG,
  VG
}

class JuiceCalculator {
  int vgRatio;
  Nicotine nicotine;
  List<Flavour> flavours;
  Map<pgvg, double> pgvgcontents;
}

class Nicotine {
  double concentration;
  pgvg base;
  Nicotine(this.concentration, this.base);
}

class Flavour {
  String name;
  double concentration;
  pgvg base;

  Flavour(this.name, this.concentration, this.base);
  Flavour.withPG(this.name, this.concentration);
}