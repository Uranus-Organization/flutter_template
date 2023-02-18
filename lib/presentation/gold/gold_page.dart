import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiche_vpn/domain/model/dish.dart';
import 'package:quiche_vpn/presentation/base/base_route_aware.dart';
import 'package:quiche_vpn/presentation/gold/gold_provider.dart';
import 'package:quiche_vpn/presentation/gold/widget/gold_body_widget.dart';
import 'package:quiche_vpn/util/util.dart';

class GoldPage extends StatefulWidget {
  const GoldPage._({Key? key}) : super(key: key);

  static Widget instance() {
    return ChangeNotifierProvider(
      create: (context) => GoldProvider(),
      child: const GoldPage._(),
    );
  }

  @override
  State<GoldPage> createState() => GoldPageState();
}

class GoldPageState extends BaseRouteAware<GoldPage>
    with AfterLayoutMixin, ResponsiveMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    final data = ModalRoute.of(context)!.settings.arguments as List<Dish>;
    context.read<GoldProvider>().setupData(data);
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
  Widget build(BuildContext context) {
    initResponsive(context);
    return Scaffold(
      appBar: AppBar(
        title: AppText.h4(LocaleTexts.gold.tr()),
      ),
      body: Consumer<GoldProvider>(
        builder: (BuildContext context, provider, _) {
          if (provider.dishes.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GoldBodyWidget(
            data: provider.dishes,
          );
        },
      ),
    );
  }
}
