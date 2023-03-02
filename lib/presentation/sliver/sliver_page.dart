import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiche_vpn/presentation/base/base_route_aware.dart';
import 'package:quiche_vpn/presentation/component/swipe_directions_widget.dart';
import 'package:quiche_vpn/presentation/sliver/sliver_provider.dart';
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

  /// Swiper controller
  final SwiperController swiperController = SwiperController();

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    // Init sliver provider
    _sliverProvider = Provider.of(context, listen: false);
    _sliverProvider.delegate = this;
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
      backgroundColor: AppColor.white,
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return SwipeDirectionWidget(
            onLeft: () {
              swiperController.next();
            },
            onRight: () {
              swiperController.previous();
            },
            child: Container(
              color:
                  index % 2 == 0 ? Colors.deepOrangeAccent : Colors.amberAccent,
            ),
          );
        },
        curve: Curves.easeOut,
        itemCount: 10,
        controller: swiperController,
        layout: SwiperLayout.DEFAULT,
        axisDirection: AxisDirection.down,
        scrollDirection: Axis.vertical,
        allowImplicitScrolling: true,
      ),
    );
  }
}
