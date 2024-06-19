import 'app.dart';
import 'config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.dev);
  runAppWithCrashlyticsAndLocalization(flavor: Flavor.dev);
}
