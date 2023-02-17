import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/app_global.dart';

abstract class BaseRouteAware<T extends StatefulWidget> extends State<T>
    with RouteAware {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    navigationObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    navigationObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    // Route was pushed onto navigator and is now topmost route.
    super.didPush();
  }

  @override
  void didPopNext() {
    // Covering route was popped off the navigator.
    super.didPopNext();
  }

  @override
  void didPop() {
    // The Navigator popped route.
    super.didPop();
  }

  @override
  void didPushNext() {
    // The new route has been pushed, and the current route is no longer visible.
    super.didPushNext();
  }
}
