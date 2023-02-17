import 'package:flutter/material.dart';
import 'package:quiche_vpn/presentation/base/base_route_aware.dart';
import 'package:quiche_vpn/util/app_mixin.dart';

class GoldPage extends StatefulWidget {
  const GoldPage({Key? key}) : super(key: key);

  @override
  State<GoldPage> createState() => GoldPageState();
}

class GoldPageState extends BaseRouteAware<GoldPage>
    with AfterLayoutMixin, ResponsiveMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {}

  @override
  void didPushNext() {
    // TODO: implement didPushNext
    super.didPushNext();
  }

  @override
  void didPop() {
    // TODO: implement didPop
    super.didPop();
  }

  @override
  void didPopNext() {
    // TODO: implement didPopNext
    super.didPopNext();
  }

  @override
  void didPush() {
    // TODO: implement didPush
    super.didPush();
  }

  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gold'),
      ),
    );
  }
}
