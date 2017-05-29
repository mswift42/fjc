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
  int basestrength;
  double  targetstrength;
  pgvg base;
  Map<pgvg, double> nicjuice;
  Nicotine(this.basestrength, this.targetstrength, this.base);

  Map<pgvg, double> nicotinevolume(double targetvolume) {
    var nicmap = new Map();
    nicmap[base] = (targetstrength / basestrength) * targetvolume;
    return nicmap;
  }

}

class Flavour {
  String name;
  double strength;
  pgvg base;

  Flavour(this.name, this.strength, this.base);
  Flavour.withPG(this.name, this.strength) {
    base = pgvg.PG;
  }
}