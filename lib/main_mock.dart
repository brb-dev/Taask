import 'app.dart';
import 'config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.mock);
  runAppWithCrashlyticsAndLocalization(flavor: Flavor.mock);
}
