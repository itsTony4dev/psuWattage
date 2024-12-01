class CPU {
  String _model;
  int _wattage;

  CPU(this._model, this._wattage);

  int get wattage => _wattage;

  String get model => _model;

  @override
  String toString() {
    return model;
  }

  static List<CPU> models = [
    CPU("Intel i3-10100", 65),
    CPU("Intel i5-11400", 85),
    CPU("Intel i7-12700K", 125),
    CPU("AMD Ryzen 5 3600", 65),
    CPU("AMD Ryzen 7 5800X", 105),
  ];
}

class GPU {
  final String model;
  final int wattage;

  GPU({
    required this.model,
    required this.wattage,
  });

  static List<GPU> models = [
    GPU(model: "GTX 1650", wattage: 75),
    GPU(model: "RTX 3060", wattage: 170),
    GPU(model: "RTX 4070", wattage: 200),
    GPU(model: "RX 6600 XT", wattage: 160),
  ];

  @override
  String toString() {
    return model;
  }
}

class RAM {
  final String model;
  final int wattage;

  RAM({
    required this.model,
    required this.wattage,
  });

  static List<RAM> models = [
    RAM(model: "8GB DDR4", wattage: 3),
    RAM(model: "16GB DDR4", wattage: 5),
    RAM(model: "32GB DDR5", wattage: 8),
  ];

  @override
  String toString() {
    return model;
  }
}

class Storage {
  final String model;
  final int wattage;

  Storage({
    required this.model,
    required this.wattage,
  });

  static List<Storage> models = [
    Storage(model: "1TB HDD", wattage: 7),
    Storage(model: "500GB SSD", wattage: 3),
    Storage(model: "1TB NVMe SSD", wattage: 5),
  ];

  @override
  String toString() {
    return model;
  }
}

class Motherboard {
  final String model;
  final int wattage;

  Motherboard({
    required this.model,
    required this.wattage,
  });

  static List<Motherboard> models = [
    Motherboard(model: "B550 ATX", wattage: 25),
    Motherboard(model: "X570 Gaming", wattage: 35),
    Motherboard(model: "Z690 Premium", wattage: 45),
  ];

  @override
  String toString() {
    return model;
  }
}

