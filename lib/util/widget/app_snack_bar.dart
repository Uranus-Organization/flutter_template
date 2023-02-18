import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/util.dart';

/// Show title snack bar
void showTitleSnackBar(String text, {int seconds = 3}) {
  scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  var snackBar = SnackBar(
    backgroundColor: AppColor.mainGreen.withOpacity(.8),
    behavior: SnackBarBehavior.floating,
    elevation: 1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
    content: Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: AppText.h3(
                color: AppColor.white,
                text,
                scalable: false,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}

/// Show loading w/ title snack bar
void showLoadingSnackBar(String text, {int seconds = 60}) {
  scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  var snackBar = SnackBar(
    backgroundColor: AppColor.mainGreen.withOpacity(.8),
    elevation: 1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    duration: Duration(seconds: seconds),
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
    content: Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: AppText.h3(
              color: AppColor.white,
              text,
              scalable: false,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 20),
          const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}

/// Hide snack bar
void hideSnackBar() {
  scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
}
