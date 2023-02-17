import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiche_vpn/presentation/base/base_material_page.dart';
import 'package:quiche_vpn/presentation/base/base_route_aware.dart';
import 'package:quiche_vpn/presentation/sliver/sliver_provider.dart';
import 'package:quiche_vpn/util/util.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  SliverPageState createState() => SliverPageState();
}

class SliverPageState extends BaseRouteAware<SliverPage>
    with AfterLayoutMixin, ResponsiveMixin {
  /// Sliver provider
  late SliverProvider _sliverProvider;

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    // Init sliver provider
    _sliverProvider = Provider.of(context, listen: false);
  }

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
  void dispose() {
    _sliverProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver'),
      ),
      backgroundColor: AppColor.white,
      body: Center(
        child: AppPrimaryButton(
          onPressed: transitionToGoldPage,
          title: 'Go Gold',
        ),
      ),
    );
  }
}
