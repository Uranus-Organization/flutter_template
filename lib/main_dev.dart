import 'config/app_config.dart';
import 'environment/environment.dart';
import 'package:quiche_vpn/main.dart' as app;

Future<void> main() async {
  AppConfig(env: Environment.development());
  await app.main();
}