import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/util.dart';

class SliverBodyWidget extends StatelessWidget {
  const SliverBodyWidget({
    required this.onGotoGoldPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onGotoGoldPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppPrimaryButton(
        onPressed: onGotoGoldPressed,
        title: LocaleTexts.next.tr(),
      ),
    );
  }
}
