import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiche_vpn/domain/model/dish.dart';
import 'package:quiche_vpn/presentation/base/base_route_aware.dart';
import 'package:quiche_vpn/presentation/sliver/sliver_provider.dart';
import 'package:quiche_vpn/presentation/sliver/widget/sliver_body_widget.dart';
import 'package:quiche_vpn/util/util.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  SliverPageState createState() => SliverPageState();
}

class SliverPageState extends BaseRouteAware<SliverPage>
    with AfterLayoutMixin, SliverProviderDelegate {
  /// Sliver provider
  late SliverProvider _sliverProvider;

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    // Init sliver provider
    _sliverProvider = Provider.of(context, listen: false);
    _sliverProvider.delegate = this;
    // Fetch some data
    showLoadingSnackBar(LocaleTexts.fetching.tr());
    Future.delayed(const Duration(seconds: 2), () async {
      await _sliverProvider.fetchSomeData();
    });
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
  void onFetchSomeDataFailed(String message) {
    showTitleSnackBar(message);
  }

  @override
  void onFetchSomeDataSuccess(data) {
    hideSnackBar();
  }

  @override
  void dispose() {
    _sliverProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.h4(LocaleTexts.sliver.tr()),
      ),
      backgroundColor: AppColor.white,
      body: Selector<SliverProvider, List<Dish>>(
        selector: (_, data) => data.dishes,
        builder: (BuildContext context, List<Dish> data, __) {
          if (data.isEmpty) return const SizedBox();
          return SliverBodyWidget(onGotoGoldPressed: () {
            transitionToGoldPage(data);
          });
        },
      ),
    );
  }
}
