import 'dart:async';

import 'package:flutter/material.dart';

import 'config.dart';
import 'locator.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
}

void runAppWithCrashlyticsAndLocalization({required Flavor flavor}) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(
        App(
          flavor: flavor.name,
        ),
      );
    },
    (error, stackTrace) {
      //record Error
    },
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.flavor,
  });

  final String flavor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('The flavor is $flavor'),
        ),
      ),
    );
  }
}
