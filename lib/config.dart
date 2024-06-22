import 'package:firebase_core/firebase_core.dart';

import 'infrastructure/core/config/firebase/firebase_options_mock.dart'
    as firebase_mock;
import 'infrastructure/core/config/firebase/firebase_options_dev.dart'
    as firebase_dev;
import 'infrastructure/core/config/firebase/firebase_options_prod.dart'
    as firebase_prod;

enum Flavor { mock, dev, prod }

class Config {
  Flavor appFlavor = Flavor.prod;

  bool get isMockFlavor => appFlavor == Flavor.mock;

  FirebaseOptions get firebaseOptions {
    switch (appFlavor) {
      case Flavor.mock:
        return firebase_mock.DefaultFirebaseOptions.currentPlatform;
      case Flavor.dev:
        return firebase_dev.DefaultFirebaseOptions.currentPlatform;
      case Flavor.prod:
      default:
        return firebase_prod.DefaultFirebaseOptions.currentPlatform;
    }
  }
}
