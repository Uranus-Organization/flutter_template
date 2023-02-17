import 'package:flutter/cupertino.dart';
import 'package:quiche_vpn/router/navigation_controller.dart';
import 'package:quiche_vpn/router/routes.dart';

extension AppRouter<T extends StatefulWidget> on State<T> {
  void transitionToSliverPage() {
    NavigationController.push(Routes.sliver.routeName, replace: true);
  }

  void transitionToGoldPage() {
    NavigationController.push(Routes.gold.routeName);
  }

  void pop() {
    Navigator.pop(context);
  }
}
