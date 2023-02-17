import 'named_route.dart';

enum AppRoute {
  unknown,
  root,
  sliver,
  gold,
}

class Routes {
  static NamedRoute get root =>
      NamedRoute(appRoute: AppRoute.root);

  static NamedRoute get unknown =>
      NamedRoute(appRoute: AppRoute.unknown);

  static NamedRoute get sliver =>
      NamedRoute(appRoute: AppRoute.sliver);

  static NamedRoute get gold =>
      NamedRoute(appRoute: AppRoute.gold);

  static List<NamedRoute> values = [
    unknown,
    root,
    sliver,
    gold
  ];
}