enum Flavor { mock, dev, prod }

class Config {
  Flavor appFlavor = Flavor.prod;
}
