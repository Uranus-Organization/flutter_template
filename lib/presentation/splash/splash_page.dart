import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/assets/app_image.dart';
import 'package:quiche_vpn/util/util.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with AfterLayoutMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2500), () {
      transitionToSliverPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.white,
      child: Center(
        child: SizedBox(
          width: 124,
          height: 124,
          child: AppImage.appYolo.widget(),
        ),
      ),
    );
  }
}
