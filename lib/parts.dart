class CPU {
  String model;
  int wattage;

  CPU(this.model, this.wattage);

  @override
  String toString() {
    return model;
  }

  static List<CPU> models = [
    CPU("Intel i3-10100", 65),
    CPU("Intel i5-11400", 85),
    CPU("Intel i7-12700K", 125),
    CPU("AMD Ryzen 5 5600X", 65),
    CPU("AMD Ryzen 9 5900X", 105),
  ];
}

class GPU {
  final String model;
  final int wattage;

  GPU(
    this.model,
    this.wattage,
  );

  static List<GPU> models = [
    GPU("NVIDIA GeForce GT 1060", 50),
    GPU("AMD Radeon RX 6500 XT", 107),
    GPU("NVIDIA GeForce RTX 3060", 170),
    GPU("AMD Radeon RX 6800", 250),
    GPU("NVIDIA GeForce RTX 4090", 450),
  ];

  @override
  String toString() {
    return model;
  }
}

class RAM {
  final String model;
  final int wattage;

  RAM(
    this.model,
    this.wattage,
  );

  static List<RAM> models = [
    RAM("8GB DDR4-2400", 3),
    RAM("16GB DDR4-3200", 5),
    RAM("16GB DDR4-3600", 7),
    RAM("32GB DDR4-3600", 9),
    RAM("32GB DDR4-4000", 12),
  ];

  @override
  String toString() {
    return model;
  }
}

class Storage {
  final String model;
  final int wattage;

  Storage(this.model, this.wattage);

  static List<Storage> models = [
    Storage("SATA HDD (2TB)", 6),
    Storage("SATA SSD (500GB)", 2),
    Storage("NVMe SSD (1TB)", 5),
    Storage("M.2 NVMe SSD (500GB)", 3),
    Storage("High-Capacity HDD (10TB)", 10),
  ];

  @override
  String toString() {
    return model;
  }
}

class Motherboard {
  final String model;
  final int wattage;

  Motherboard(this.model, this.wattage);

  static List<Motherboard> models = [
    Motherboard("ASUS ROG Zenith II Extreme Alpha", 180),
    Motherboard("ASUS ROG Rampage VI Extreme Encore", 200),
    Motherboard("ASRock TRX40 Creator", 220),
    Motherboard("ASUS ROG Maximus XIII Hero", 150),
    Motherboard("Gigabyte TRX40 AORUS XTREME", 230),
  ];

  @override
  String toString() {
    return model;
  }
}

