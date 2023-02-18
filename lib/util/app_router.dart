import 'package:flutter/cupertino.dart';
import 'package:quiche_vpn/router/navigation_controller.dart';
import 'package:quiche_vpn/router/routes.dart';

extension AppRouter<T extends StatefulWidget> on State<T> {
  /// Go to sliver page
  void transitionToSliverPage() {
    NavigationController.push(Routes.sliver.routeName, replace: true);
  }

  /// Go to gold page
  void transitionToGoldPage(dynamic data) {
    NavigationController.push(Routes.gold.routeName, arguments: data);
  }

  /// Back to previous page
  void pop() {
    Navigator.pop(context);
  }
}
