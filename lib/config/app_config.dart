import 'package:quiche_vpn/config/app_config_type.dart';
import 'package:quiche_vpn/environment/environment.dart';

class AppConfig with AppConfigType {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig({required Environment env}) {
    shared.env = env;
    return shared;
  }

  AppConfig._instance();
  Environment? env;

  @override
  String get baseDomain => env?.kaguyaBaseDomain ?? '';

  @override
  String get graphqlEndPoint => env?.graphqlEndPoint ?? '';
}