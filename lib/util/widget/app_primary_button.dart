import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/util.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColor.active),
      ),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(width: 1.sp, color: AppColor.active),
            ),
          ),
        ),
        onPressed: onPressed,
        child: AppText.primaryButtonText(title, color: AppColor.active),
      ),
    );
  }
}
